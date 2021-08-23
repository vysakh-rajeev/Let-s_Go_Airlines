require('dotenv').config();
const express = require('express');
const app = express();
const PORT = 3000; // defining the PORT to 3000
const db = require('./services/mysql_db'); // define db 
var bodyParser = require('body-parser')

app.use(express.json());
app.set('views', __dirname + '/views'); // setting to frontend folder
app.engine('html', require('ejs').renderFile); // activate template engine ejs used by Node.js
app.set('view engine', 'ejs');
app.use(express.static(__dirname + '/public')); // access images and css from public folder
var jsonParser = bodyParser.json()
var urlencodedParser = bodyParser.urlencoded({ extended: false })

// Display the Airport location to select origin and destination from database table

app.get('/', (req,res) => {
    db.query('select * from airport_location', function(err, result, fields){
        if (err)
        {
            throw err;
        }
        else
        {
            var arr = []
            for (var i in result)
            {
                var people = result[i];
                arr.push(people.City);  

            }
            res.render('index.html', {city : arr});
        }
    });
})

// Display all the available flights after validating with the collected orgin, detsination and date of journey

app.get('/search/result', (req,res) => {
    let origin = req.query.origin;
    let destination = req.query.destination;
    let dateofjourney = req.query.dateofjourney;
    let numberofpassengers = req.query.numberofpassengers;
// Querying 
    db.query('select * from flight_details where Source="'+origin+'" AND Destination="'+destination+'" AND DOJ="'+dateofjourney+'"', function(err, result, fields){
        if (err)
        {
            throw err;
        }
        else
        {
            var arr = []
            for (var i in result)
            {
                var people = result[i];
                if(people.Seat_Availability>=numberofpassengers){ // check if seats are available in the flight
                    people.numberofpassengers = numberofpassengers;
                    arr.push(people);
                }
            }
            
            res.render('search_results.html', {flights : arr});
        }
    });

})

// Collect the flight id and no of passengers using get method
app.get('/book', (req,res) => {
    var fid = req.query.fid;
    var noof = req.query.no;
    res.render('book.html', {fid : fid, noof : noof});
})

// Display all the necessary details after successful booking with unique booking id and seat numbers
app.post('/book/flight', urlencodedParser, async(req,res) => {
    var fid = req.body.fid;
    var noof = req.body.numberofpass;
    var bookid = randomString(10);
    var error = false;
    var balance = 0;
    var curr_rem = 0;
    var se = 'AB';
    var pass = '';
    var seats = '';
    var source;
    var destination;
    var dt;
    var at;
    var reason;
        db.query('select * from flight_details where Flight_ID="'+fid+'"', function(err, result, fields){
            if (err)
            {
                console.log(err); error = true;
                reason = 'Server Error'
            }
            else
            {
                    people = result[0];
                    var curr_rem = people.Seat_Availability;
                    source = people.Source;
                    destination = people.Destination;
                    dt = people.Departure_time;
                    at = people.Arrival_time;
                    var balance = curr_rem - noof;
                    if(balance>=0){
                        for(var i=1; i<=noof; i++){
                            var fname = eval('req.body.fname'+i);
                            var lname = eval('req.body.lname'+i);
                            var age = eval('req.body.age'+i);
                            var gender = eval('req.body.gender'+i);
                            var email = eval('req.body.email'+i);
                            var phone = eval('req.body.pnum'+i);
                            if(i==noof){
                                var str = "" + i
                                var pad = "000"
                                var ans = pad.substring(0, pad.length - str.length) + str
                                var temp = se+ans
                                seats += temp
                                pass += fname+' '+lname
                            }else{
                                var str = "" + i
                                var pad = "000"
                                var ans = pad.substring(0, pad.length - str.length) + str
                                var temp = se+ans+', '
                                seats += temp
                                pass += fname+' '+lname+', '
                            }
                            // Add the details entered by the passengers to the passenger_information table
                            db.query('INSERT INTO passenger_infomation (First_Name, Last_Name, Age, Gender, Email, Phone, FLIGHT_ID, BOOKING_ID) VALUES ("'+fname+'","'+lname+'","'+age+'","'+gender+'","'+email+'","'+phone+'","'+fid+'","'+bookid+'")', function(err, result, fields){
                                if (err)
                                {
                                    console.log(err);
                                    error = true;
                                    reason = 'Server Error'
                                }
                            });
                        }
                            // Update the availability of seats bu subtracting with the no. of passengers booked
                            db.query('update flight_details set Seat_Availability=Seat_Availability-'+noof+' where Flight_ID="'+fid+'"', function(err, result, fields){
                            if (err)
                            {
                                console.log(err);
                                error = true;
                                reason = 'Server Error'
                            }
                        });
                    }else{
                        error = true;
                        reason = 'Tickets Sold Out' // Display reason in case of parallel booking ans resulting in 0 availability of seats
                    }
                if(error){
                    // Load the failure page in case of Unsuccessful booking
                    res.render('failed.html', { reason: reason});
                }else{
                    // Display the success page with all necessary information and details
                    res.render('success.html',{fid: fid, source: source, destination: destination, at: at, dt: dt, seats: seats, pass: pass, bookid: bookid  });
                }
            }
        });     
})

// Making PORT to listen 
app.listen(
    PORT,
    () => console.log(`App is running on port : ${PORT}`)
)

// Funtion definition to generate unique booking id for successful booking
function randomString(length) {
    return Math.round((Math.pow(36, length + 1) - Math.random() * Math.pow(36, length))).toString(36).slice(1);
}

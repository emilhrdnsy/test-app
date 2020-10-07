const express = require('express');
const mysql = require('mysql');
const ejs = require('ejs');
const expressLayouts = require('express-ejs-layouts')
var bodyParser = require('body-parser');

// init app
const app = express();

// load view engine 
// app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs')
app.set('layout', './layouts/layout')

app.use(express.static('assets'));
app.use(expressLayouts);

// to get value from form
app.use(express.urlencoded({ extended: false }));

//menggunakan library pada express
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())

//create connection
const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "diagnosisdb"
});


// connect
connection.connect(err => {
    if (err) {
        console.log("error connecting: " + err.stack);
        return;
    }
    console.log("MySQL Connected...");
});


app.get('/', function (req, res) {
    connection.query("SELECT * FROM gejala", (error, results) => {
        res.render('add.ejs', { title: "Home", heading: "Pilih Gejala", button_value: "Diagnosa", gejala: results });
    });
});


app.post('/', function (req, res) {

    const sql = req.body.gejala

    res.render('hasil.ejs', { title: "Hasil", heading: "Hasil", hasil: sql });

});

// app.post('/', (req, res) => {
//     connection.query('INSERT INTO hasil (Nama_Siswa, Masalah, Nilai_CF, Solusi) VALUES (?)', [('" + req.body.name + "', '" + req.body.problem + "', '" + req.body.value + "', '" + req.body.solution + "')], (error, results) => {
//         connection.query('SELECT * FROM hasil', (error, results) => {
//             res.render('hasil.ejs', { title: "Hasil", heading: "Hasil", hasil: results });
//         })
//     })
// });

app.get("/daftar-gejala", (req, res) => {
    connection.query("SELECT * FROM gejala", (error, results) => {
        res.render("daftar-gejala.ejs", { title: "Daftar Gejala", heading: "Daftar Gejala", gejala: results });
    });
});

app.get("/daftar-diagnosa", (req, res) => {
    connection.query("SELECT * FROM hasil", (error, results) => {
        res.render("daftar-diagnosa.ejs", { title: "Daftar Diagnosa", heading: "Daftar Diagnosa", hasil: results });
    })
});

app.get("/daftar-masalah", (req, res) => {
    connection.query("SELECT * FROM masalah", (error, results) => {
        res.render("daftar-masalah.ejs", { title: "Daftar Masalah", heading: "Daftar Masalah", masalah: results });
    })
});

app.listen('3000', () => {
    console.log("Server running on port 3000")
}); 

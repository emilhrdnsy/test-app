const express = require('express');
const mysql = require('mysql');
const ejs = require('ejs');
const expressLayouts = require('express-ejs-layouts')
const ejsLint = require('ejs-lint');

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
    res.render('add-or-edit.ejs', { title: "Home", heading: "Home", button_value: "Diagnosa" });
});


// app.post('/', function (req, res) {
//     let sql = "INSERT INTO hasil ('Nama_Siswa','Masalah', 'Nilai_CF', 'Solusi') VALUES ('" + req.body.name + "','" + req.body.problem + "','" + req.body.value + "', '" + req.body.solution + "')";
//     connection.query(sql, (error, results) => {
//         if (error) throw error;
//         console.log("1 record added...");
//     });
//     res.render('result.ejs', { title: "Hasil", heading: "Hasil" });
// });

app.post('/', (req, res) => {
    connection.query('INSERT INTO hasil (Nama_Siswa, Masalah, Nilai_CF, Solusi) VALUES (?)', [('" + req.body.name + "', '" + req.body.problem + "', '" + req.body.value + "', '" + req.body.solution + "')], (error, results) => {
        connection.query('SELECT * FROM hasil', (error, results) => {
            res.render('diagnosis-list.ejs', { title: "Hasil", heading: "Hasil", hasil: results });
        })
    })
});

app.get("/daftar-gejala", (req, res) => {
    connection.query("SELECT * FROM daftar_gejala", (error, results) => {
        res.render("symptom-list.ejs", { title: "Daftar Gejala", heading: "Daftar Gejala", daftar_gejala: results });
    });
});

app.get("/daftar-diagnosa", (req, res) => {
    connection.query("SELECT * FROM hasil", (error, results) => {
        res.render("diagnosis-list.ejs", { title: "Daftar Diagnosa", heading: "Daftar Diagnosa", hasil: results });
    })
});

app.listen('3000', () => {
    console.log("Server running on port 3000")
}); 

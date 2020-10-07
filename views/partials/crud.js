// mengambil tabel dari gejala
// return array isi tabel
function readGejala() {
    let sql = 'SELECT * FROM gejala'
    let result = sql;
    let row = []
    while (row = result) {
        let rows = row;
    }
    return rows;
}

//mengambil data sebagian dari tabel gejala
function getGejala(value) {
    sql = 'SELECT * FROM gejala WHERE id_gejala IN (value)';
    let result = sql;

    // merubah data tabel menjadi array
    let row = []
    while (row = result) {
        let rows = row;
    }
    return rows;
}

function getMasalah(value) {
    sql = 'SELECT * FROM masalah WHERE id_gejala IN (value)';
    let result = sql;
    let row = []
    while (row = result) {
        let rows = row;
    }
    return rows;
}

// Gets the group pengetahuan.
// mengambil salah satu nama masalah bila terdapat nama masalah sama
function getGroupPengetahuan(value) {
    // m, g , mslh merupakan inisialisasi dari tabel yang dituju
    let sql = "SELECT mslh.masalah FROM pengetahuan m JOIN gejala g ON m.id_gejala = g.id_gejala JOIN masalah mslh ON m.kode_masalah = mslh.kode_masalah WHERE m.id_gejala IN (value) GROUP BY m.kode_masalah ORDER BY m.kode_masalah";

    let result = sql;
    if (result) {
        // merubah data tabel menjadi array
        let row = [];
        while (row = result) {
            let rows = row;
        }
        return rows;
    }
}


// get kemungkinan masalah
// mengambil data pengetahuan bila terdapat gejala
function getKemungkinanMasalah(sql) {
    // m, g , mslh merupakan inisialisasi dari tabel yang dituju
    sql = "SELECT mslh.nama_masalah, m.id_pengetahuan FROM pengetahuan m JOIN gejala g ON m.id_gejala = g.id_gejala JOIN masalah mslh ON m.kode_masalah = mslh.kode_masalah WHERE g.id_gejala IN (sql)";

    let result = sql;
    if (result) {
        // merubah data tabel menjadi array
        let row = [];
        while (row = result) {
            let rows = row;
        }
        return rows;
    }
}

function getListMasalah(value) {
    // m, g , mslh merupakan inisialisasi dari tabel yang dituju
    let sql = "SELECT * FROM pengetahuan m JOIN gejala g ON m.id_gejala = g.id_gejala JOIN masalah mslh ON m.kode_masalah = mslh.kode_masalah WHERE m.id_pengetahuan IN (value)";

    let result = sql;
    if (result) {
        // merubah data tabel menjadi array
        let row = [];
        while (row = result) {
            let rows = row;
        }
        return rows;
    }
}

function hasilCFTertinggi(daftar_cf, groupKemungkinanMasalah) {
    for (let i = 0; i < groupKemungkinanMasalah.length; i++) {
        let namaMasalah = groupKemungkinanMasalah[i]['nama_masalah'];
        // document.write("<br/>Nama Masalah = ") + namaMasalah + "</br>";
        document.write(`<br/>Nama Masalah = let {namaMasalah} </br>`);

        for (let x = 0; x < daftar_cf[namaMasalah]; x++) {
            let merubahIndexCF = Math.max(daftar_cf[namaMasalah]);
        }

        document.write(`Nilai CF Tertinggi Di Kandidat Masalah = let {merubahIndexCF} <br>`);
        document.write(`<br/>======================================<br/>`);

    }
}


function hasilAkhir(daftar_cf, groupKemungkinanMasalah) {
    for (let i = 0; i < groupKemungkinanMasalah.length; i++) {
        namaMasalah = groupKemungkinanMasalah[i]['nama_masalah'];
        for (x = 0; x < daftar_cf[namaMasalah]; x++) {
            merubahIndexCF[i] = Math.max(daftar_cf[namaMasalah]);
        }
    }

    for (let i = 0; i < groupKemungkinanMasalah.length; i++) {
        hasilMax = Math.max(merubahIndexCF);
        namaMasalah = groupKemungkinanMasalah[i]['nama_Masalah'];
        if (merubahIndexCF[i] === hasilMax) {
            document.write(`Nilai tertinggi dari perhitungan gejala adalah let {namaMasalah}, dengan nilai CF = let {merubahIndexCF[i]}`);
        }
    }

}

// export {
//     readGejala,
//     getGejala,
//     getMasalah,
//     getGroupPengetahuan,
//     getKemungkinanMasalah,
//     getListMasalah,
//     hasilCFTertinggi,
//     hasilAkhir
// };
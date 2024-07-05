const mysql = require("mysql"); 

let db_con = mysql.createConnection({ 
	host: "localhost", 
	user: "root", 
	password: '', 
	database: 'gfg_db'
}); 

db_con.connect((err) => { 
	if (err) { 
	console.log("Database Connection Failed !!!", err); 
	return; 
	} 

	console.log("We are connected to gfg_db database"); 

	// notice the if exists in below query 
	let query = 'DROP TABLE IF EXISTS users'; 

	db_con.query(query, (err, rows) => { 
		if(err) throw err; 

		console.log('Deleted users Table'); 
	}); 
});

const express = require("express"); 
const database = require('./sqlConnection'); 

const app = express(); 

app.listen(5000, () => { 
console.log(`Server is up and running on 5000 ...`); 
});

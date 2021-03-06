'use strict'

// Application dependencies
require('dotenv').config();

const express = require('express');
const cors = require('cors');
const pg = require('pg');


// Application Setup
const app = express();
const PORT = process.env.PORT;
const CLIENT_URL = process.env.CLIENT_URL;
const DATABASE_URL = process.env.DATABASE_URL;
// const conString = 'postgres:postgres:82469173@localhost:5432/books_app';

// Database Setup
const client = new pg.Client(DATABASE_URL);
client.connect();
client.on('error', err => console.error(err));

// Application Middleware
app.use(cors());
// app.use(bodyParser.urlencoded({extended: true}));

// app.get('*', (req, res) => res.redirect('/'));



app.get('/test', (req, res) => {
 res.send('Skynet online');
});

app.get('/api/v1/books', (req, res) => {
 client.query(`SELECT book_id, title, author, image, isbn, description FROM books;`)
   .then(results => res.send(results.rows))
   .catch(console.error);
});

app.get('/api/v1/books/:id', (req, res) => {
  console.log('i am here');
  client.query(`
  SELECT * from BOOKS where book_id=$1;
  `,
  [req.params.id]
)
.then(results => res.send(results.rows[0]))
.catch(err => console.error(err));
});


app.post('/api/v1/books/new', (req, res) => {
  client.query(`
    INSERT INTO books (book_id, title, author, image, isbn)
    VALUES($1, $2, $3, $4, $5),
    [request.body.book_id, request.body.title, request.body.author, request.body.author, request.body.image, request.body.isbn]
 `)
})

app.listen(PORT, () => console.log(`Listening on port: ${PORT}`));

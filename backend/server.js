const express = require('express');
const mysql = require('mysql')
const cors = require('cors')

const app = express()
app.use(cors())
app.use(express.json());

const db = mysql.createConnection({
    host: "localhost",
    user: 'root',
    password: '',
    database: 'FitLogDB'
})

app.get('/', (re,res)=> {
    return res.json("From Backend Side");
})

app.listen(8081, ()=> {
    console.log("listening");
})

app.get('/user', (req, res)=> {
    const sql = "SELECT * FROM user";
    db.query(sql, (err,data)=> {
        if(err) return res.json(err);
        return res.json(data[0]);
    })
})

app.get('/session', (req, res)=> {
    const sql = "SELECT * FROM session";
    db.query(sql, (err,data)=> {
        if(err) return res.json(err);
        return res.json(data);
    })
})


app.get('/goal', (req, res)=> {
    const sql = "SELECT * FROM goals";
    db.query(sql, (err,data)=> {
        if(err) return res.json(err);
        return res.json(data);
    })
})

app.get('/history', (req, res)=> {
    const sql = `select session.type, history.time, history.date
                from history
                inner join session on history.session = session.Ses_ID`;
    db.query(sql, (err,data)=> {
        if(err) return res.json(err);
        return res.json(data);
    })
})

app.get('/recommend', (req, res)=> {
    const sql = `select session.type, recommend.time
from recommend 
inner join session on recommend.sess = session.Ses_ID`;
    db.query(sql, (err,data)=> {
        if(err) return res.json(err);
        return res.json(data);
    })
})

app.post('/record-session', (req, res) => {
    const { formattedDateNow, exerciseType, duration } = req.body;

    const sess_ID = parseInt(exerciseType, 10);
    const time = parseInt(duration, 10);
    const date = formattedDateNow;

    const query = 'INSERT INTO history (date, session, time) VALUES (?, ?, ?)';
    console.log("Inserting:", date, sess_ID, time);

    db.query(query, [date, sess_ID, time], (err, result) => {
        if (err) {
            console.error('Error inserting data:', err);
            res.status(500).send('Error inserting data into database');
        } else {
            res.status(200).send('Session recorded successfully');
        }
    });
});

app.get('/workout-summary', (req, res) => {
    const query = `
      SELECT date, SUM(time) as total_time
      FROM history
      GROUP BY date
      ORDER BY date ASC
      LIMIT 7;
    `;
    
    db.query(query, (err, data) => {
      if (err) {
        console.error('Error fetching workout summary:', err);
        res.status(500).send('Error fetching workout summary');
      } else {
        res.json(data);
      }
    });
  });
  
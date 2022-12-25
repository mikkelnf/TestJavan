const bodyParser = require("body-parser")
const express = require("express")
const client = require('./connection.js')

const app = express()

app.use(bodyParser.json())

app.listen(3100, (err)=> {
    if(err){
        console.log(err.message)
    }
    console.log("connected")
})

app.get('/family-members', (req,res) => {
    client.query(`select * from family_members`, (err, result) => {
        if(!err){
            res.status(200).json(result.rows)
        }
    })
})

app.post('/family-members', (req,res) => {
    // res.json(req.body)
    const {name, gender, familyMemberLevelId} = req.body
    // res.json(familyMemberLevelId)
    client.query(`insert into family_members (name, gender, family_member_level_id) values ('${name}', '${gender}', '${familyMemberLevelId}')`, (err, result) => {
        if(!err){
            res.send('insert success')
        }
    })
})

app.put('/family-members/:id', (req,res) => {
    const {name, gender, familyMemberLevelId} = req.body
    let id = req.params.id
    client.query(`update family_members set name = '${name}', gender = '${gender}', family_member_level_id = '${familyMemberLevelId}' where family_member_id = ${id}`, (err, result) => {
        if(!err){
            res.send('update success')
        }
    })
})

app.delete('/family-members/:id', (req,res) => {
    let id = req.params.id
    client.query(`DELETE FROM family_members where family_member_id = ${id}`, (err, result) => {
        if(!err){
            res.send('delete success')
        }
    })
})
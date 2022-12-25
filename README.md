# Family CRUD
A project by **Mikkel Nurfalah**
<p>&nbsp;</p>

# Introduction
A simple CRUD application of family member data, built with Node.js and postgreSql
<p>&nbsp;</p>


# How to run

### Create database
first of all you need to create a postgre database named db_test_javan, or anything you want as long you match the name in file /connection.js,

then you need to match your postgre username and password in file /connection.js

after that you need to run this command on terminal:
```
npm start
```
and server will automatically running on port 3100, then you can test the API using postman
<p>&nbsp;</p>

# Restful API

## Using Postman
you can import collection into postman with file /Test-Javan.postman_collection.json
<p>&nbsp;</p>

# SQL Query
There is a sql query file in /query.sql to create tables and insert data
<p>&nbsp;</p>

# Services

## Family members
### - Get all family members
- Request URL : http://localhost:3100/family-members
- HTTP Method : GET
### - Create family member
- Request URL : http://localhost:3100/family-members
- HTTP Method : POST
- Sample Request Body :
```
{
    "family_member_id": 1,
    "name": "bani",
    "gender": "L",
    "family_member_level_id": 1
}
```
### - Update family member
- Request URL : http://localhost:3100/family-members/:id
- HTTP Method : PUT
### - Delete family member
- Request URL : http://localhost:3100/family-members/:id
- HTTP Method : DELETE
<p>&nbsp;</p>





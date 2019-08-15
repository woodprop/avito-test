<?php

const DB_HOST = 'localhost';
const DB_USER = 'root';
const DB_PASS = '';
const DB_BASE = 'api';


function db_connect() {
    $db = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_BASE);
    return $db;
}
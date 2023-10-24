<?php

namespace Php\DB;

use PDO;
use PDOException;

class DB
{
    private $servername = "db"; //db on docker
    private $username = "movies";
    private $password = "movies";
    private $db = "movies";

    public function connect()
    {
        try {
            $this->pdo = new PDO("mysql:host={$this->servername};dbname={$this->db}", $this->username, $this->password);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $this->pdo;
        } catch (PDOException $e) {
            die("Errore di connessione al database: " . $e->getMessage());
        }
    }
}

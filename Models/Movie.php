<?php

namespace Models;

use PDO;

class Movie
{
    private $pdo;
    private $table_name = 'movies';

    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    // Create (INSERT)
    public function create($title, $year, $story)
    {
        $sql = "INSERT INTO {$this->table_name} (title, year, story) VALUES (?, ?, ?)";
        $stmt = $this->pdo->prepare($sql);
        return $stmt->execute([$title, $year, $story]);
    }

    // Read (SELECT)
    public function get($id)
    {
        $sql = "SELECT * FROM {$this->table_name} WHERE id = ?";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Update (UPDATE)
    public function update($id, $title, $year, $story)
    {
        $sql = "UPDATE {$this->table_name} SET title = ?, year = ?, story = ? WHERE id = ?";
        $stmt = $this->pdo->prepare($sql);
        return $stmt->execute([$title, $year, $story, $id]);
    }

    // Delete (DELETE)
    public function delete($id)
    {
        $sql = "DELETE FROM {$this->table_name} WHERE id = ?";
        $stmt = $this->pdo->prepare($sql);
        return $stmt->execute([$id]);
    }
}

<?php

namespace Php\Models;

class Movie extends Model
{
    private $table_name = 'movies';

    // List (INDEX)
    public function list($query_concat = '')
    {
        $sql = "SELECT * FROM {$this->table_name}";

        if ($query_concat != '') {
            $sql .= " " . $query_concat;
        }

        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }

    // Create (INSERT)
    public function create($title, $year, $story)
    {
        $sql = "INSERT INTO {$this->table_name} (title, year, story) VALUES (?, ?, ?)";
        $stmt = $this->db->prepare($sql);
        return $stmt->execute([$title, $year, $story]);
    }

    // Read (SELECT)
    public function get($id)
    {
        $sql = "SELECT * FROM {$this->table_name} WHERE id = ?";
        $stmt = $this->db->prepare($sql);
        $stmt->execute([$id]);
        return $stmt->fetch(\PDO::FETCH_ASSOC);
    }

    // Update (UPDATE)
    public function update($id, $title, $year, $story)
    {
        $sql = "UPDATE {$this->table_name} SET title = ?, year = ?, story = ? WHERE id = ?";
        $stmt = $this->db->prepare($sql);
        return $stmt->execute([$title, $year, $story, $id]);
    }

    // Delete (DELETE)
    public function delete($id)
    {
        $sql = "DELETE FROM {$this->table_name} WHERE id = ?";
        $stmt = $this->db->prepare($sql);
        return $stmt->execute([$id]);
    }

    //Get Actors for specific film
    function getActorsById($id)
    {
        $sql = "SELECT actors.id, actors.firstname, actors.lastname
                FROM actors
                INNER JOIN movie_actor ON actors.id = movie_actor.actor_id
                WHERE movie_actor.movie_id = {$id}";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }
}

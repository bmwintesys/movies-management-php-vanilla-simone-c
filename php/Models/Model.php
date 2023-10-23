<?php

namespace Php\Models;

use Php\DB\DB;

class Model
{
    protected $db;

    public function __construct()
    {
        $db = new DB;
        $this->db = $db->connect();
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    // use HasFactory;
    protected $table = 'blog_table';
    protected $primaryKey = 'id';
    public $timestamps = false;

    //const CREATED_AT = 'create_time'; 
    //const UPDATED_AT = 'update_time';
}

/*   <Link to="/">Home</Link> |
    <Link to="/bidList">Bid List</Link> |
    <Link to="/contestList">Contest List</Link> |
    <Link to="/projectList">Project List</Link> |
    <Link to="/postContest">Post Contest</Link> |
    <Link to="/postProject">Post Contest</Link>    */

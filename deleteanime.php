<?php
    include 'db.php';
    $db = new DB();

    if($id = isset($_GET['id'])){
        try{
            $db->deleteAnime($id);
            header('location:animelist.php?delete=1');
        }
        catch(Exception $e){
            header('location:animedetail.php?error=1&msg=".$e->getMessage()."');
        }
    }


?>
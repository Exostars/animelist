<?php
    include 'db.php';
    $db = new DB();

    session_start();
    $access = isset($_SESSION['access']);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>AnimeList</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap/css/bootstrap.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.php">AnimeList</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.php">Accueil</a></li>
                <li><a href="animelist.php">Liste d'anime</a></li>
            </ul>
            <form method="get" action="search.php" class="navbar-form navbar-left">
                <div class="input-group">
                    <input name="animetosearch" type="text" class="form-control" placeholder="Rechercher un anime">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </div>
                </div>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <?php
                    if (isset($_SESSION['login']) AND isset($_SESSION['access'])){
                        echo "<li><a href=\"logout.php\"><span class=\"glyphicon glyphicon-log-in\"></span> Logout</a></li>";
                    }
                    else{
                        echo"
                        <li><a href=\"signup.php\"><span class=\"glyphicon glyphicon-user\"></span> Sign Up</a></li>
                        <li><a href=\"login.php\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</a></li>";
                    }
                ?>
            </ul>
        </div>
    </nav>
    <?php
        if(isset($_GET['signup']) == 1){
            echo "<div class=\"alert alert-success alert-dismissable\">
            <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">×</a>
            Inscription réussie</div>";
        }
    ?>
</body>
</html>

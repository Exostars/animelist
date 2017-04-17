<?php
    include 'db.php';
    $db = new DB();

    session_start();
    $access = isset($_SESSION['access']);

    $animetosearch = $_GET['animetosearch'];

    switch (isset($_GET['sort'])){
        case 'nom':
            $animerequest = "SELECT id, nom, nb_ep, nb_oav, nb_film, note, img FROM anime WHERE anime.nom LIKE '%$animetosearch%' ORDER BY nom;";
            break;
        case 'ep':
            $animerequest = "SELECT id, nom, nb_ep, nb_oav, nb_film, note, img FROM anime WHERE anime.nom LIKE '%$animetosearch%' ORDER BY nb_ep DESC;";
            break;
        case 'oav':
            $animerequest = "SELECT id, nom, nb_ep, nb_oav, nb_film, note, img FROM anime WHERE anime.nom LIKE '%$animetosearch%' ORDER BY nb_oav DESC;";
            break;
        case 'film':
            $animerequest = "SELECT id, nom, nb_ep, nb_oav, nb_film, note, img FROM anime WHERE anime.nom LIKE '%$animetosearch%' ORDER BY nb_film DESC;";
            break;
        case 'note':
            $animerequest = "SELECT id, nom, nb_ep, nb_oav, nb_film, note, img FROM anime WHERE anime.nom LIKE '%$animetosearch%' ORDER BY note DESC;";
            break;
        default:
            $animerequest = "SELECT id, nom, nb_ep, nb_oav, nb_film, note, img FROM anime WHERE anime.nom LIKE '%$animetosearch%' ORDER BY nom;";
            break;
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>AnimeList</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/animelist.css">
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
                <li><a href="index.php">Accueil</a></li>
                <li class="active"><a href="animelist.php">Liste d'anime</a></li>
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
    <div class="container margin-top">
        <div class="panel panel-primary">
            <div class="panel-heading"><h1>Résultat pour : <?php echo $_GET['animetosearch']; ?></h1></div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th></th>
                            <th><a href="search.php?sort=nom">Anime</a></th>
                            <th style='text-align:center'>Genre</th>
                            <th style='text-align:center'><a href="search.php?sort=ep&animetosearch='$animetosearch'">Épisodes</a></th>
                            <th style='text-align:center'><a href="search.php?sort=oav">OAV</a></th>
                            <th style='text-align:center'><a href="search.php?sort=film">Films</a></th>
                            <th style='text-align:center'><a href="search.php?sort=note">Note</a></th>
                        </tr>
                        </thead>
                        <?php
                            $animeresult = $db->selectRequest($animerequest);
                            foreach($animeresult as $row){
                                $id = $row['id'];
                                $genrerequest = "SELECT genre.nom FROM genre INNER JOIN anime_genre ON(genre.id = anime_genre.genre_id) 
                                                             INNER JOIN anime ON(anime_genre.anime_id = anime.id) WHERE anime.id = $id;";
                                $genreresult = $db->selectRequest($genrerequest);
                                echo "
                                <tr class='handcursor' onclick='document.location.href=\"animedetail.php?id=".$id."\"'>
                                    <td style='vertical-align:middle;'>
                                        <img height='150px' width='150px' style='margin-right:20px;' src=".$row['img']."></img>
                                    </td>
                                    <td style='vertical-align:middle;' width='300px'>
                                        <span class='spantitle'>".$row['nom']."</span>
                                    </td>
                                    <td style='vertical-align:middle;'>";
                                foreach($genreresult as $line){
                                    switch ($line['nom']){
                                        case "ACTION":
                                            $color = "orange";
                                            break;
                                        case "AVENTURE":
                                            $color = "vert";
                                            break;
                                        case "AMOUR ET AMITIE":
                                            $color = "rose";
                                            break;
                                        case "COMBAT":
                                            $color = "rouge";
                                            break;
                                        case "COMEDIE":
                                            $color = "jaune";
                                            break;
                                        case "CYBER ET MECHA":
                                            $color = "gris";
                                            break;
                                        case "DRAME":
                                            $color = "noir";
                                            break;
                                        case "ECCHI":
                                            $color = "rougeclair";
                                            break;
                                        case "ENIGME ET POLICIER":
                                            $color = "marron";
                                            break;
                                        case "EPIQUE ET HEROIQUE":
                                            $color = "bleuroi";
                                            break;
                                        case "SCIENCE-FICTION":
                                            $color = "violet";
                                            break;
                                        case "FANTASTIQUE":
                                            $color = "rosefoncer";
                                            break;
                                        case "HORREUR":
                                            $color = "orangefoncer";
                                            break;
                                        case "MAGICAL GIRL":
                                            $color = "jauneclair";
                                            break;
                                        case "MUSICAL":
                                            $color = "cyan";
                                            break;
                                        case "SPORT":
                                            $color = "marronclair";
                                            break;
                                        case "TRANCHE DE VIE":
                                            $color = "bleu";
                                            break;
                                        default:
                                            $color = "white";
                                            break;
                                    }
                                    echo "<div class=$color>".$line['nom']."</div>";
                                }
                                echo"
                                    </td>
                                    <td style='vertical-align:middle; text-align:center'>".$row['nb_ep']."</td>
                                    <td style='vertical-align:middle; text-align:center'>".$row['nb_oav']."</td>
                                    <td style='vertical-align:middle; text-align:center'>".$row['nb_film']."</td>
                                    <td style='vertical-align:middle; text-align:center'>".$row['note']."</td>
                                </tr>";
                            }
                        ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/carte.css">
    <title>Oeuvres</title>
</head>
<body>
    <div class="circle circle-1"></div>
    
    <h1>Oeuvres cinématographiques</h1>

    <section>
<?php 
    include('secret.php');

    // Fiche métier du sous-domaine Décor 
        $sql = "SELECT *  
        FROM weklap_oeuvre, weklap_categorie, weklap_rel_oeuvre_lieu
        WHERE weklap_oeuvre.ext_categorie=weklap_categorie.id_categorie AND weklap_rel_oeuvre_lieu.ext_oeuvre=weklap_oeuvre.id_oeuvre AND weklap_rel_oeuvre_lieu.type_photo = 'Couverture'";
        $req = $link -> prepare($sql);
        $req -> execute();
        while($data = $req -> fetch()){
        echo '
                <div class="card">
                    <div class="affiche"><img src="'.$data['photo_oeuvre'].'" alt=""></div>
                    <div class="line"></div>
                    <div class="titre ligne_horizontal">
                        <p>'.$data['titre_oeuvre'].' - '.$data['annee_sortie'].'</p>
                    </div>
                    <div class="line"></div>
                </div>';
        }
        $req = null;
    ?>
    </section>

<!-- <h2>'.$data['nom_categorie'].'</h2> -->
</body>
</html>
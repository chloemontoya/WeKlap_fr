<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap');

    h1, h2, h3,p{
        font-family: Poppins;
    }
    </style>
    <title>Oeuvres</title>
</head>
<body>
    <h1>Oeuvres cinématographiques</h1>
<?php 
    include('secret.php');
        
    // Fiche métier du sous-domaine Décor 
        $sql = "SELECT *  
        FROM weklap_oeuvre, weklap_categorie
        WHERE weklap_oeuvre.ext_categorie=weklap_categorie.id_categorie
        AND weklap_categorie.id_categorie=1";
        $req = $link -> prepare($sql);
        $req -> execute();
        while($data = $req -> fetch()){
        echo '<h2>'.$data['nom_categorie'].'</h2>
              <h3>'.$data['titre_oeuvre'].'</h3>
              <p>'.$data['realisateur'].'</p>
              <p>'.$data['nationnalite'].'</p>
              <p>'.$data['annee_sortie'].'</p>
              <p>'.$data['synopsis'].'</p>
              <a href="'.$data['bande_annonce'].'">Lien bande d`annonce</a>';
        }
        $req = null;
    ?>
</body>
</html>
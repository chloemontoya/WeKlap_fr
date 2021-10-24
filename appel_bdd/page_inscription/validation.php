<!doctype html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <title>Formulaire de contact</title>
</head>

<body>
    <?php 

    $link = new PDO('mysql:host=localhost;dbname=weklap', 'root', '', array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));

    if(isset($_GET["mail"])){
        $sql = "INSERT INTO weklap_utilisateur(nom_utilisateur, prenom_utilisateur, pseudo_utilisateur, mail, mot_de_passe) VALUES (:nom, :prenom, :pseudo,:mail, :mdp)";

        $req = $link -> prepare($sql);

        $req -> execute(array(":nom"=> $_GET["nom_utilisateur"],":prenom"=> $_GET["prenom_utilisateur"],":pseudo"=> $_GET["pseudo_utilisateur"],":mail"=> $_GET["mail"], ":mdp"=> $_GET["mot_de_passe"]));
        $req = null;
    }else{
        echo("<p>Merci d'indiquer votre adresse mail</p>");
    };
?>
    <a href="inscription.php">Bienvenue parmis la communauté Weklap !</a>
</body>

</html>
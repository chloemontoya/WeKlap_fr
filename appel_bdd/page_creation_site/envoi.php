<!doctype html>
<html lang="fr">

<head>
    <meta charset="utf-8">
</head>

<body>
    <?php 

    $link = new PDO('mysql:host=localhost;dbname=weklap', 'root', '', array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
    if(isset($_GET["mail_newsletter"])){
        $sql = "INSERT INTO weklap_newsletter(mail_newsletter) VALUES (:email)";
        $req = $link -> prepare($sql);
        $req -> execute(array(":email"=> $_GET["mail_newsletter"]));
        $req = null;
        echo "<h1>Merci pour votre inscription !</h1>";
    }else{
        echo("<p>Merci d'indiquer votre adresse mail</p>");
    };
?>
    <a href="index.php">Retour à la page d'accueil</a>
</body>

</html>
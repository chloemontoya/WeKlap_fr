<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/inscription.css">
    <title>Connexion</title>
</head>

<body>

    <div class="formulaire">

        <div class="left">
            <img src="assets/image/logo.png" alt=""><br>
            <div id="visiter"><a href="">Visiter librement</a></div>
        </div>
        <form class="right" action="validation.php" method="get">
            <div class="form">
                <h1>Inscription</h1>
                <p>Tous les champs sont obligatoires :) </p>
                <div class="champs">
                    <div class="nom_prenom">
                    <input type="text" name="nom_utilisateur" id="contact_nom" required placeholder="Nom">
                    <input name="prenom_utilisateur" id="contact_prenom" type="text" required placeholder="Prénom"> <br>
                </div>
                    <input name="pseudo_utilisateur" id="pseudo" type="text" required placeholder="Pseudo"> <br>
                    <input name="mail" id="email" type="email" required placeholder="Email"> <br>
                    <input name="mot_de_passe" type="password" id="pwd" placeholder="Mot de passe"> <br>
                    <input type="password" id="pwd" placeholder="Valider le mot de passe"> <br>
                </div>
                <input type="submit" value="Valider" id="valider"> <br>
                <a href="#">- Mot de passe oublié ? -</a>
                <p>Vous possédez déjà un compte ? <a href="#">Connexion</a></p>
            </div>
        </form>
    </div>
</body>

</html>
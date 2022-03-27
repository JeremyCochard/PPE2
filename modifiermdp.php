
<?php
include_once '_head.inc.php';
?>
<main class="form-signin" style="margin-top:10%;">
    <form action="modifiermdp.php" method="POST">
        <?php
        //mettre à jours le mdp de l'utilisateur
        if(!empty($_POST["mdp"]) && isset($_POST['valider'])){
        $ancienMdp = $_POST["mdp"];
        $newMdp = md5($ancienMdp);
        $pseudo = $_SESSION['mailtest'];
        $pdo = gestionnaireDeConnexion();
        $sql = "UPDATE utilisateur SET mdp= '$newMdp' where adrMel= '$pseudo' ";
        $pdo->exec($sql);
        ?><div class="alert alert-success" role="alert">Votre mot de passe a était modifié</div><?php
        }
        ?>

        <p style="text-align: center;">Modifier votre mot de passe</p>
        <div class="form-floating">
            <input type="password" class="form-control" name="mdp" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">mot de passe</label>
        </div>

        <button class="w-100 btn btn-lg btn-primary" name="valider" type="submit">CONNEXION</button>
        <p style="text-align: center;">&copy; 2017–2022</p>
    </form>
    <a  href='inscription.php'><button>inscription</button></a>
</main>

<?php include_once '_footer.inc.php'; ?>

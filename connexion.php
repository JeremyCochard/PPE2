<?php include_once '_head.inc.php';
?>
<main class="form-signin" style="margin-top:10%;">
    <form action="traitement.php" method="POST">
        <?php
             if (isset($_GET['con_err'])) {
            $err = htmlspecialchars($_GET['con_err']);

            switch ($err) {
                    case 'non_connecté':
                    ?>
                    <div class="alert alert-danger">
                        <strong>Erreur</strong> login ou mdp invalide
                    </div>
                    <?php
                    break;
                
                case 'champs_Non_Saisie':
                    ?>
                    <div class="alert alert-danger">
                        <strong>Erreur</strong> un ou plusieurs champs n'ont pas était saisies
                    </div>
                <?php
            }
        }
        ?>

        <p style="text-align: center;">CONNEXION</p>

        <div class="form-floating">
            <input type="text" class="form-control" name="login" id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">Identifiant</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" name="mdp" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">mot de passe</label>
        </div>

        <button class="w-100 btn btn-lg btn-primary" name="validerConnexion" type="submit">CONNEXION</button>
        <p style="text-align: center;">&copy; 2017–2022</p>
    </form>
    <a href='verification.php'><button>mot de passe oublié?</button></a>
    <a  href='inscription.php'><button>inscription</button></a>
</main>

<?php include_once '_footer.inc.php'; ?>
 
<?php include_once '_head.inc.php'; ?>

<main>
    <form method="post" action="conteneur.php">
        <label for="firstName" class="form-label">Choix d'abonnement:</label>
        <input type="radio" name="codeDuree" value="JOUR"/>Jours
        <input type="radio" name="codeDuree" value="TRIMESTRE"/>Trimestre
        <input type="radio" name="codeDuree" value="ANNEE"/>Année
        <a href='container.php'><button>choisir</button></a>
    </form>


    <main>

        <div class="album py-5 bg-light">
            <div class="container" >

                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                    <?php
                    //affichage des conteneurs en fonction du choix de l'abonnement et du numéro du conteneur
                    $choix = $_POST['codeDuree'];
                    $listeConteneurs = listeConteneurs($choix);
                    foreach ($listeConteneurs as $conteneurs):
                        ?>
                        <?php if ($conteneurs["numTypeContainer"] == 1) { ?> 
                            <div class="col">
                                <div class="card shadow-sm">
                                    <img src="Image/smallDry.png" alt="Small dry conteneur">
                                    <div class="card-body">
                                        <h5 class="card-text">Nom : <?php echo $conteneurs["libelleTypeContainer"] ?></h5>
                                        <p class="card-text">Numéro du conteneur : <?php echo $conteneurs["numTypeContainer"] ?> </p>
                                        <p class="card-text">Type de conteneur : <?php echo $conteneurs["codeTypeContainer"] ?>  </p>
                                        <p class="card-text">Longueur : <?php echo $conteneurs["longueurCont"] ?>  </p>
                                        <p class="card-text">Largeur : <?php echo $conteneurs["largeurCont"] ?> </p>
                                        <p class="card-text">Hauteur : <?php echo $conteneurs["hauteurCont"] ?> </p>
                                        <p class="card-text">Tarif : <?php echo $conteneurs["tarif"] ?> </p>
                                        <p class="card-text">choix abonnement:<?php echo $conteneurs["codeDuree"] ?> </p>
                                        <a href="reservation.php" class="btn btn-primary">Reserver ?</a> 
                                    </div>
                                </div>
                            </div>
                        <?php } ?> 
                        <?php if ($conteneurs["numTypeContainer"] == 2) { ?> 
                            <div class="col">
                                <div class="card shadow-sm">
                                    <img src="Image/mediumDry.png" alt="Small dry conteneur">
                                    <div class="card-body">
                                        <h5 class="card-text">Nom : <?php echo $conteneurs["libelleTypeContainer"] ?></h5>
                                        <p class="card-text">Numéro du conteneur : <?php echo $conteneurs["numTypeContainer"] ?> </p>
                                        <p class="card-text">Type de conteneur : <?php echo $conteneurs["codeTypeContainer"] ?>  </p>
                                        <p class="card-text">Longueur : <?php echo $conteneurs["longueurCont"] ?>  </p>
                                        <p class="card-text">Largeur : <?php echo $conteneurs["largeurCont"] ?> </p>
                                        <p class="card-text">Hauteur : <?php echo $conteneurs["hauteurCont"] ?> </p>
                                        <p class="card-text">Tarif : <?php echo $conteneurs["tarif"] ?> </p>
                                        <p class="card-text">choix abonnement:<?php echo $conteneurs["codeDuree"] ?> </p>
                                        <a href="reservation.php" class="btn btn-primary">Reserver ?</a> 
                                    </div>
                                </div>
                            </div>
                        <?php } ?> 
                        <?php if ($conteneurs["numTypeContainer"] == 3) { ?> 
                            <div class="col">
                                <div class="card shadow-sm">
                                    <img src="Image/hightCube.png" alt="Small dry conteneur">
                                    <div class="card-body">
                                        <h5 class="card-text">Nom : <?php echo $conteneurs["libelleTypeContainer"] ?></h5>
                                        <p class="card-text">Numéro du conteneur : <?php echo $conteneurs["numTypeContainer"] ?> </p>
                                        <p class="card-text">Type de conteneur : <?php echo $conteneurs["codeTypeContainer"] ?>  </p>
                                        <p class="card-text">Longueur : <?php echo $conteneurs["longueurCont"] ?>  </p>
                                        <p class="card-text">Largeur : <?php echo $conteneurs["largeurCont"] ?> </p>
                                        <p class="card-text">Hauteur : <?php echo $conteneurs["hauteurCont"] ?> </p>
                                        <p class="card-text">Tarif : <?php echo $conteneurs["tarif"] ?> </p>
                                        <p class="card-text">choix abonnement:<?php echo $conteneurs["codeDuree"] ?> </p>
                                        <a href="reservation.php" class="btn btn-primary">Reserver ?</a> 
                                    </div>
                                </div>
                            </div>
                        <?php } ?> 
                        <?php if ($conteneurs["numTypeContainer"] == 4) { ?> 
                            <div class="col">
                                <div class="card shadow-sm">
                                    <img src="Image/smallFlat.png" alt="Small dry conteneur">
                                    <div class="card-body">
                                        <h5 class="card-text">Nom : <?php echo $conteneurs["libelleTypeContainer"] ?></h5>
                                        <p class="card-text">Numéro du conteneur : <?php echo $conteneurs["numTypeContainer"] ?> </p>
                                        <p class="card-text">Type de conteneur : <?php echo $conteneurs["codeTypeContainer"] ?>  </p>
                                        <p class="card-text">Longueur : <?php echo $conteneurs["longueurCont"] ?>  </p>
                                        <p class="card-text">Largeur : <?php echo $conteneurs["largeurCont"] ?> </p>
                                        <p class="card-text">Hauteur : <?php echo $conteneurs["hauteurCont"] ?> </p>
                                        <p class="card-text">Tarif : <?php echo $conteneurs["tarif"] ?> </p>
                                        <p class="card-text">choix abonnement:<?php echo $conteneurs["codeDuree"] ?> </p>
                                        <a href="reservation.php" class="btn btn-primary">Reserver ?</a> 
                                    </div>
                                </div>
                            </div>
                        <?php } ?> 
                        <?php if ($conteneurs["numTypeContainer"] == 5) { ?> 
                            <div class="col">
                                <div class="card shadow-sm">
                                    <img src="Image/mediumFlat.png" alt="Small dry conteneur">
                                    <div class="card-body">
                                        <h5 class="card-text">Nom : <?php echo $conteneurs["libelleTypeContainer"] ?></h5>
                                        <p class="card-text">Numéro du conteneur : <?php echo $conteneurs["numTypeContainer"] ?> </p>
                                        <p class="card-text">Type de conteneur : <?php echo $conteneurs["codeTypeContainer"] ?>  </p>
                                        <p class="card-text">Longueur : <?php echo $conteneurs["longueurCont"] ?>  </p>
                                        <p class="card-text">Largeur : <?php echo $conteneurs["largeurCont"] ?> </p>
                                        <p class="card-text">Hauteur : <?php echo $conteneurs["hauteurCont"] ?> </p>
                                        <p class="card-text">Tarif : <?php echo $conteneurs["tarif"] ?> </p>
                                        <p class="card-text">choix abonnement:<?php echo $conteneurs["codeDuree"] ?> </p>
                                        <a href="reservation.php" class="btn btn-primary">Reserver ?</a> 
                                    </div>
                                </div>
                            </div>
                        <?php } ?> 
                        <?php if ($conteneurs["numTypeContainer"] == 6) { ?> 
                            <div class="col">
                                <div class="card shadow-sm">
                                    <img src="Image/smallOpen.png" alt="Small dry conteneur">
                                    <div class="card-body">
                                        <h5 class="card-text">Nom : <?php echo $conteneurs["libelleTypeContainer"] ?></h5>
                                        <p class="card-text">Numéro du conteneur : <?php echo $conteneurs["numTypeContainer"] ?> </p>
                                        <p class="card-text">Type de conteneur : <?php echo $conteneurs["codeTypeContainer"] ?>  </p>
                                        <p class="card-text">Longueur : <?php echo $conteneurs["longueurCont"] ?>  </p>
                                        <p class="card-text">Largeur : <?php echo $conteneurs["largeurCont"] ?> </p>
                                        <p class="card-text">Hauteur : <?php echo $conteneurs["hauteurCont"] ?> </p>
                                        <p class="card-text">Tarif : <?php echo $conteneurs["tarif"] ?> </p>
                                        <p class="card-text">choix abonnement:<?php echo $conteneurs["codeDuree"] ?> </p>
                                        <a href="reservation.php" class="btn btn-primary">Reserver ?</a> 
                                    </div>
                                </div>
                            </div>
                        <?php } ?> 
                        <?php if ($conteneurs["numTypeContainer"] == 7) { ?> 
                            <div class="col">
                                <div class="card shadow-sm">
                                    <img src="Image/mediumOpen.png" alt="Small dry conteneur">
                                    <div class="card-body">
                                        <h5 class="card-text">Nom : <?php echo $conteneurs["libelleTypeContainer"] ?></h5>
                                        <p class="card-text">Numéro du conteneur : <?php echo $conteneurs["numTypeContainer"] ?> </p>
                                        <p class="card-text">Type de conteneur : <?php echo $conteneurs["codeTypeContainer"] ?>  </p>
                                        <p class="card-text">Longueur : <?php echo $conteneurs["longueurCont"] ?>  </p>
                                        <p class="card-text">Largeur : <?php echo $conteneurs["largeurCont"] ?> </p>
                                        <p class="card-text">Hauteur : <?php echo $conteneurs["hauteurCont"] ?> </p>
                                        <p class="card-text">Tarif : <?php echo $conteneurs["tarif"] ?> </p>
                                        <p class="card-text">choix abonnement:<?php echo $conteneurs["codeDuree"] ?> </p>
                                        <a href="reservation.php" class="btn btn-primary">Reserver ?</a> 
                                    </div>
                                </div>
                            </div>
                        <?php } ?> 
                        <?php if ($conteneurs["numTypeContainer"] == 8) { ?> 
                            <div class="col">
                                <div class="card shadow-sm">
                                    <img src="Image/smallReefer.png" alt="Small dry conteneur">
                                    <div class="card-body">
                                        <h5 class="card-text">Nom : <?php echo $conteneurs["libelleTypeContainer"] ?></h5>
                                        <p class="card-text">Numéro du conteneur : <?php echo $conteneurs["numTypeContainer"] ?> </p>
                                        <p class="card-text">Type de conteneur : <?php echo $conteneurs["codeTypeContainer"] ?>  </p>
                                        <p class="card-text">Longueur : <?php echo $conteneurs["longueurCont"] ?>  </p>
                                        <p class="card-text">Largeur : <?php echo $conteneurs["largeurCont"] ?> </p>
                                        <p class="card-text">Hauteur : <?php echo $conteneurs["hauteurCont"] ?> </p>
                                        <p class="card-text">Tarif : <?php echo $conteneurs["tarif"] ?> </p>
                                        <p class="card-text">choix abonnement:<?php echo $conteneurs["codeDuree"] ?> </p>
                                        <a href="reservation.php" class="btn btn-primary">Reserver ?</a> 
                                    </div>
                                </div>
                            </div>
                        <?php } ?> 
                        <?php if ($conteneurs["numTypeContainer"] == 9) { ?> 
                            <div class="col">
                                <div class="card shadow-sm">
                                    <img src="Image/mediumReefer.png" alt="Small dry conteneur">
                                    <div class="card-body">
                                        <h5 class="card-text">Nom : <?php echo $conteneurs["libelleTypeContainer"] ?></h5>
                                        <p class="card-text">Numéro du conteneur : <?php echo $conteneurs["numTypeContainer"] ?> </p>
                                        <p class="card-text">Type de conteneur : <?php echo $conteneurs["codeTypeContainer"] ?>  </p>
                                        <p class="card-text">Longueur : <?php echo $conteneurs["longueurCont"] ?>  </p>
                                        <p class="card-text">Largeur : <?php echo $conteneurs["largeurCont"] ?> </p>
                                        <p class="card-text">Hauteur : <?php echo $conteneurs["hauteurCont"] ?> </p>
                                        <p class="card-text">Tarif : <?php echo $conteneurs["tarif"] ?> </p>
                                        <p class="card-text">choix abonnement:<?php echo $conteneurs["codeDuree"] ?> </p>
                                        <a href="reservation.php" class="btn btn-primary">Reserver ?</a> 
                                    </div>
                                </div>
                            </div>
                        <?php } ?> 
                    <?php endforeach; ?> 
                </div>
            </div>
        </div>

    </main>



</main>
<?php
include_once '_footer.inc.php';


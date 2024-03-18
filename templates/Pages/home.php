<?php 

$identity = $this->getRequest()->getAttribute('identity');
$identity = $identity ?? [];

?>
<header>
        <h1>Accueil</h1>
    </header>
 
    <div class="container">
        <div class="content">
            <?php if ($identity): ?>
                BONJOUR <strong><?php if(empty($identity["first_name"]) && empty($identity["last_name"])){echo $identity["username"];}elseif(empty($identity["first_name"])){echo 'Mr. '.$identity["last_name"];}else{echo $identity["first_name"];} ?></strong>,<h2>Vous êtes bien connecté !</h2>
            <?php else: ?>
               <p>Bienvenue sur l'accueil de l'AP GSB. Si vous souhaitez accèder à votre interface client et bénéficier de nos services : Connectez-vous. Si vous n'avez pas de compte créez en un.</p>
            <?php endif; ?>
            <!-- Ici, vous pouvez ajouter du contenu supplémentaire, des liens, des images, etc. -->
        </div>
    </div>
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
            BONJOUR <strong>
                <?php 
                    if(empty($identity["first_name"]) && empty($identity["last_name"])) {
                        echo $identity["username"];
                    } elseif(empty($identity["first_name"])) {
                        echo 'Mr. '.$identity["last_name"];
                    } else {
                        echo $identity["first_name"];
                    } 
                ?>
            </strong>,<h2>Vous êtes bien connecté !</h2>
        <?php else: ?>
            <p>Bienvenue sur l'accueil de l'AP GSB. Si vous souhaitez accéder à votre interface client et bénéficier de nos services : Connectez-vous. Si vous n'avez pas de compte, créez-en un.</p>
        <?php endif; ?>
        <!-- Ici, vous pouvez ajouter du contenu supplémentaire, des liens, des images, etc. -->
    </div>
</div>
<br>
<br>
<div class="container">
    <div class="content">
        <!-- Conditions Générales d'Utilisation (CGU) -->
        <h2>Conditions Générales d'Utilisation (CGU)</h2>
        <p>
            Bienvenue sur [Applifrais] !
            Les présentes Conditions Générales d'Utilisation (ci-après désignées par "CGU") régissent l'utilisation du site web [https://delattrevalentin.fr] (ci-après désigné par "le Site") et les services qui y sont proposés. Veuillez lire attentivement ces CGU avant d'utiliser le Site.
        </p>
        <h3>Acceptation des CGU</h3>
        <p>En utilisant le Site, vous acceptez sans réserve les présentes CGU. Si vous n'acceptez pas ces CGU, veuillez ne pas utiliser le Site.</p>
        <h3>Modifications des CGU</h3>
        <p>Nous nous réservons le droit de modifier ces CGU à tout moment. Les modifications seront effectives dès leur publication sur le Site. Il est de votre responsabilité de consulter régulièrement les CGU afin de prendre connaissance des éventuelles modifications. Votre utilisation continue du Site après la publication des modifications constitue votre acceptation de ces modifications.</p>
        <h3>Utilisation du Site</h3>
        <p>Vous acceptez d'utiliser le Site conformément aux lois en vigueur et aux présentes CGU. Vous vous engagez à ne pas utiliser le Site à des fins illicites ou interdites par ces CGU.</p>
        <h3>Propriété Intellectuelle</h3>
        <p>Le Site et son contenu (textes, images, logos, vidéos, etc.) sont protégés par des droits de propriété intellectuelle qui sont la propriété de [Votre société ou vous-même]. Toute utilisation non autorisée du contenu du Site est strictement interdite et peut constituer une violation des lois sur le droit d'auteur et les autres lois applicables.</p>
        <h3>Limitation de Responsabilité</h3>
        <p>Le Site est fourni "tel quel", sans aucune garantie expresse ou implicite. [Votre société ou vous-même] ne garantit pas que le Site sera disponible de manière ininterrompue ou sans erreur, ni que les informations fournies sur le Site seront exactes, complètes ou à jour.</p>
        <h3>Liens Externes</h3>
        <p>Le Site peut contenir des liens vers des sites web tiers ou des ressources externes. Ces liens sont fournis uniquement pour votre commodité, et [Votre société ou vous-même] n'assume aucune responsabilité quant au contenu de ces sites web tiers ou ressources externes.</p>
        <h3>Droit Applicable et Juridiction</h3>
        <p>Les présentes CGU sont régies par le droit applicable dans votre juridiction. Tout litige découlant de l'utilisation du Site sera soumis à la compétence exclusive des tribunaux compétents dans votre juridiction.</p>
        <h3>Contact</h3>
        <p>Si vous avez des questions ou des préoccupations concernant ces CGU, veuillez nous contacter à [adresse e-mail de contact].</p>
        <p>Dernière mise à jour : [Date de la dernière mise à jour des CGU]</p>

        <!-- Mentions Légales -->
        
        <!-- Ajoutez ici le texte des mentions légales -->
        <!-- Éditeur du Site, Directeur de la publication, Hébergeur du Site, Propriété Intellectuelle, Collecte et Traitement des Données Personnelles, Cookies, Liens Externes, Droit Applicable et Juridiction, Contact, Dernière mise à jour -->
    </div>
</div>
<br>
<br>
<div class="container">
    <div class="content">
        <!-- Conditions Générales d'Utilisation (CGU) -->
        <!-- Ajoutez ici le texte des CGU -->
        
        <!-- Mentions Légales -->
        <h2>Mentions Légales</h2>
        <h3>Éditeur du Site</h3>
        <p>[Indiquez le nom de votre entreprise ou de la personne responsable] [Adresse de l'entreprise] [Téléphone de l'entreprise] [E-mail de contact] [Numéro d'identification de l'entreprise]</p>
        <h3>Directeur de la publication</h3>
        <p>[Indiquez le nom du directeur de la publication, s'il y a lieu]</p>
        <h3>Hébergeur du Site</h3>
        <p>[Indiquez le nom de l'hébergeur du Site] [Adresse de l'hébergeur] [Téléphone de l'hébergeur] [E-mail de contact de l'hébergeur]</p>
        <h3>Propriété Intellectuelle</h3>
        <p>Le Site et son contenu (textes, images, logos, vidéos, etc.) sont protégés par des droits de propriété intellectuelle qui sont la propriété de [Votre société ou vous-même]. Toute utilisation non autorisée du contenu du Site est strictement interdite et peut constituer une violation des lois sur le droit d'auteur et les autres lois applicables.</p>
        <h3>Collecte et Traitement des Données Personnelles</h3>
        <p>[Indiquez votre politique de confidentialité et de protection des données personnelles, en mentionnant notamment les informations collectées, la finalité de la collecte, les destinataires des données, etc.]</p>
        <h3>Cookies</h3>
        <p>[Indiquez votre politique en matière de cookies, notamment les cookies utilisés sur votre site, leur finalité et la manière dont les utilisateurs peuvent les gérer ou les désactiver]</p>
        <h3>Liens Externes</h3>
        <p>Le Site peut contenir des liens vers des sites web tiers ou des ressources externes. Ces liens sont fournis uniquement pour votre commodité, et [Votre société ou vous-même] n'assume aucune responsabilité quant au contenu de ces sites web tiers ou ressources externes.</p>
        <h3>Droit Applicable et Juridiction</h3>
        <p>Les présentes mentions légales sont régies par le droit applicable dans votre juridiction. Tout litige découlant de l'utilisation du Site sera soumis à la compétence exclusive des tribunaux compétents dans votre juridiction.</p>
        <h3>Contact</h3>
        <p>Si vous avez des questions ou des préoccupations concernant ces mentions légales, veuillez nous contacter à [adresse e-mail de contact].</p>
        <p>Dernière mise à jour : [Date de la dernière mise à jour des mentions légales]</p>
    </div>
</div>
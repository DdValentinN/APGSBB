<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu déroulant en PHP</title>
</head>
<body>

<form action="traitement.php" method="post">
    <label for="choix">Choisir une option :</label>
    <select name="choix" id="choix">
        <?php
        // Options à partir d'un tableau
        $options = array("Option 1", "Option 2", "Option 3", "Option 4");

        // Boucle pour générer les options
        foreach ($options as $option) {
            echo "<option value='$option'>$option</option>";
        }
        ?>
    </select>
    <input type="submit" value="Valider">
</form>

</body>
</html>

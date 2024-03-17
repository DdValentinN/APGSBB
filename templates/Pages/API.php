<?php
// Database settings
$db = "gsb-cake";
$dbhost = "localhost";
$dbport = 3306;
$dbuser = "root";
$dbpasswd = "";

$pdo = new PDO('mysql:host=' . $dbhost . ';port=' . $dbport . ';dbname=' . $db . '', $dbuser, $dbpasswd);
$pdo->exec("SET CHARACTER SET utf8");

$userId = isset($_GET['userId']) ? $_GET['userId'] : null;

if ($userId) {
    $stmt = $pdo->prepare("SELECT * FROM users2 WHERE id = :userId");
    $stmt->bindParam(':userId', $userId, PDO::PARAM_INT);
    $stmt->execute();

    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user) {
        echo json_encode($user);
    } else {
        echo json_encode(array('error' => 'Utilisateur non trouvé'));
    }
} else {
    echo json_encode(array('error' => 'Paramètre manquant'));
}

$pdo = null;
?>

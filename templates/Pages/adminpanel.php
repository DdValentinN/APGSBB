<?= __('<strong>Fiches :</strong>') ?>
<?= $this->Html->link('Voir fiches', ['plugin' => NULL,'controller' => 'Sheets', 'action' => 'index'], ['class' => 'button','style'=> 'width:100%']) ?>
<?= $this->Html->link('Voir états', ['plugin' => NULL,'controller' => 'states', 'action' => 'index'], ['class' => 'button','style'=> 'width:100%;margin-bottom: 30px']) ?>
<?= __('<strong>Frais :</strong>') ?>
<?= $this->Html->link('Voir frais', ['plugin' => NULL,'controller' => 'Packages', 'action' => 'index'], ['class' => 'button','style'=> 'width:100%']) ?>
<?= $this->Html->link('Voir frais hors-forfait', ['plugin' => NULL,'controller' => 'Outpackages', 'action' => 'index'], ['class' => 'button','style'=> 'width:100%;margin-bottom: 30px']) ?>

<?= __('<strong>Utilisateurs :</strong>') ?>
<?= $this->Html->link('Voir utilisateurs', ['plugin' => 'CakeDC/Users','controller' => 'Users', 'action' => 'index'], ['class' => 'button','style'=> 'width:100%']) ?>
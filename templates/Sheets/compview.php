<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Sheet $sheet
 */

 $identity = $this->getRequest()->getAttribute('identity');
$identity = $identity ?? [];
$iduser = $identity["id"];

$total = 0;
$total_package = 0;
$total_outpackage = 0;

?>
<div class="row">
    <aside class="column">
        <div class="side-nav">
            <h4 class="heading"><?= __('Actions') ?></h4>
            <?= $this->Html->link(__('Liste Fiches'), ['action' => 'complist'], ['class' => 'side-nav-item']) ?>
        </div>
    </aside>
    <div class="column-responsive column-80">
        <div class="sheets view content">
            <h3><?= h($sheet->id) ?></h3>
            <table>
                <tr>
                    <th><?= __('Nom') ?></th>
                    <td><?= $sheet->user->last_name ?></td>
                </tr>
                <tr>
                    <th><?= __('Prénom') ?></th>
                    <td><?= $sheet->user->first_name ?></td>
                </tr>
                <tr>
                    <th><?= __('Etat') ?></th>
                    <td><?= $sheet->state->state ?></td>
                </tr>
                <tr>
                    <th><?= __('Id') ?></th>
                    <td><?= $this->Number->format($sheet->id) ?></td>
                </tr>
                <tr>
                    <th><?= __('Date de création') ?></th>
                    <td><?= h($sheet->created) ?></td>
                </tr>
                <tr>
                    <th><?= __('Dernière modification') ?></th>
                    <td><?= h($sheet->modified) ?></td>
                </tr>
                <tr>
                    <th><?= __('Validation fiche') ?></th>
                    <td><?= $sheet->sheetvalidated ? __('Oui') : __('Non'); ?></td>
                </tr>
            </table>
            <?php if($sheet->sheetvalidated == false): ?>
                <?= $this->Form->create($sheet, ['url' => ['controller' => 'Sheets', 'action' => 'validate', $sheet->id]]) ?>
                    <?= $this->Form->button(__('Valider fiche'), ['type' => 'submit', 'style' => 'margin: 15px 0;', 'confirm' => __('Êtes-vous sûr de valider la fiche?')]) ?>
                <?= $this->Form->end() ?>
            <?php elseif($sheet->sheetvalidated == true): ?>
                <?= $this->Form->create($sheet, ['url' => ['controller' => 'Sheets', 'action' => 'unvalidate', $sheet->id]]) ?>
                    <?= $this->Form->button(__('Invalider fiche'), ['type' => 'submit', 'style' => 'margin: 15px 0']) ?>
                <?= $this->Form->end() ?>
            <?php endif; ?>

            
            <div class="related">
                <h4 class="float-left"><?= __('Frais présents') ?></h4>
                <?= $this->Form->create($sheet, ['url' => ['controller' => 'Sheets', 'action' => 'clientview', $sheet->id]]) ?>
                <?php if (!empty($sheet->packages)) : ?>
                    <div class="table-responsive">
                        <table>
                            <tr>
                                <th><?= __('Id') ?></th>
                                <th><?= __('Quantité') ?></th>
                                <th><?= __('Prix') ?></th>
                                <th><?= __('Titre') ?></th>
                                <th><?= __('Détails') ?></th>
                            </tr>
                            <?php foreach ($sheet->packages as $package) : ?>
                                <tr>
                                    <td><?= h($package->id) ?></td>
                                    <td>
                                    <?= $this->Html->tag('div', isset($package->_joinData->quantity) ? $package->_joinData->quantity : 0, ['class' => 'quantity-display']) ?>
                                    </td>
                                    <td><?= h($package->price) ?> €</td>
                                    <td><?= h($package->title) ?></td>
                                    <td title="<?= h($package->body) ?>">
                                        <?= h(substr($package->body, 0, 100)) ?> ...
                                    </td>
                                    
                                </tr>
                                <?php $total_package = $total_package + ($package->_joinData->quantity * $package->price) ?>
                            <?php endforeach; ?>
                            <?= $this->Form->end() ?>
                        </table>
                    </div>
                <?php endif; ?>
                <?= $this->Form->end() ?>
            </div>
            <?= '<strong>Frais hors-forfait : </strong>' ?>
                <?= $total_package." €" ?>
            <div class="related">
                <h4 class="float-left"><?= __('frais hors-forfait présents') ?></h4>
                <?php if (!empty($sheet->outpackages)) : ?>
                <div class="table-responsive">
                    <table>
                        <tr>
                            <th><?= __('Id') ?></th>
                            <th><?= __('Date') ?></th>
                            <th><?= __('Prix') ?></th>
                            <th><?= __('Titre') ?></th>
                            <th><?= __('Détails') ?></th>
                        </tr>
                        <?php foreach ($sheet->outpackages as $outpackages) : ?>
                        <tr>
                            <td><?= h($outpackages->id) ?></td>
                            <td><?= h($outpackages->date) ?></td>
                            <td><?= h($outpackages->price) ?> €</td>
                            <td><?= h($outpackages->title) ?></td>
                            <td title="<?= h($outpackages->body) ?>">
                                <?= h(substr($outpackages->body, 0, 100)) ?> ...
                            </td>
                            
                        </tr>
                        <?php $total_outpackage = $total_outpackage + $outpackages->price; ?>
                        <?php endforeach; ?>
                    </table>
                </div>
                <?php endif; ?>
                <?= '<strong>Résultat frais hors-forfait : </strong>' ?>
                <?= $total_outpackage." €" ?>
                <?= '</br><strong>Total : </strong>' ?>
                <?= $total = $total_outpackage + $total_package." €" ?>
            </div>
        </div>
    </div>
</div>

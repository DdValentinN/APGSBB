<?php
/**
 * @var \App\View\AppView $this
 * @var iterable<\App\Model\Entity\Sheet> $sheets
 */
?>
<div class="sheets index content">
    <?= $this->Html->link(__('Nouvelle fiche'), ['action' => 'add'], ['class' => 'button float-right']) ?>
    <h3><?= __('Fiches') ?></h3>
    <div class="table-responsive">
        <table>
            <thead>
                <tr>
                    <th><?= $this->Paginator->sort('id') ?></th>
                    <th><?= $this->Paginator->sort('utilisateur') ?></th>
                    <th><?= $this->Paginator->sort('état') ?></th>
                    <th><?= $this->Paginator->sort('validation') ?></th>
                    <th><?= $this->Paginator->sort('date de création') ?></th>
                    <th><?= $this->Paginator->sort('date dernière modif') ?></th>
                    <th class="actions"><?= __('Actions') ?></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($sheets as $sheet): ?>
                <tr>
                    <td><?= $this->Number->format($sheet->id) ?></td>
                    <td><?= $sheet->has('user') ? $this->Html->link($sheet->user->username, ['controller' => 'Users', 'action' => 'view', $sheet->user->id]) : '' ?></td>
                    <td><?= $sheet->has('state') ? $this->Html->link($sheet->state->state, ['controller' => 'States', 'action' => 'view', $sheet->state->id]) : '' ?></td>
                    <td><?= h($sheet->sheetvalidated) ?></td>
                    <td><?= h($sheet->created) ?></td>
                    <td><?= h($sheet->modified) ?></td>
                    <td class="actions">
                        <?= $this->Html->link(__('Voir'), ['action' => 'view', $sheet->id]) ?>
                        <?= $this->Html->link(__('Modifier'), ['action' => 'edit', $sheet->id]) ?>
                        <?= $this->Form->postLink(__('Supprimer'), ['action' => 'delete', $sheet->id], ['confirm' => __('Are you sure you want to delete # {0}?', $sheet->id)]) ?>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(__('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')) ?></p>
    </div>
</div>

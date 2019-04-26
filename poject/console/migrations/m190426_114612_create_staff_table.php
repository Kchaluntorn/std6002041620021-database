<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%staff}}`.
 */
class m190426_114612_create_staff_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%staff}}', [
            'staff_id' => $this->primaryKey(),
            'fName' => $this->string()->notNull(),
            'lname' => $this->string()->notNull(),
            'position' => $this->string()->notNull(),
            'sex' => $this ->string(2) ->notNull(),
            'dob' => $this ->string()->notNull(),
            'salary' => $this ->integer()->notNull(),
            'branch_id' => $this->string()->notNull()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%staff}}');
    }
}

<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%client}}`.
 */
class m190426_115400_create_client_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%client}}', [
            'client_no' => $this->primaryKey(),
            'fName' => $this->string()->notNull(),
            'lName' => $this->string()->notNull(),
            'tel_no' => $this->string()->notNull(),
            'pref_type'=> $this->string()->notNull(),
            'max_rent' =>$this->integer()->notNull()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%client}}');
    }
}

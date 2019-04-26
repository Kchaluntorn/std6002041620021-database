<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%private_owner}}`.
 */
class m190426_115738_create_private_owner_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%private_owner}}', [
            'owner_no' => $this->primaryKey(),
            'fName'=>$this->string()->notNull(),
            'lName' =>$this->string()->notNull(),
            'address' =>$this->string()->notNull(),
            'tel_no' =>$this->integer()->notNull()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%private_owner}}');
    }
}

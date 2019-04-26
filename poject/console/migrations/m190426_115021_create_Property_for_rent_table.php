<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%Property_for_rent}}`.
 */
class m190426_115021_create_Property_for_rent_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%Property_for_rent}}', [
            'property_no' => $this->primaryKey(),
            'street' => $this->string()->notNull(),
            'city' => $this->string()->notNull(),
            'postcode' => $this->string()->notNull(),
            'type' => $this->string()->notNull(),
            'rooms'=> $this->integer()->notNull(),
            'rent'=> $this->integer()->notNull(),
            'owner_no' => $this->string()->notNull(),
            'staff_no' => $this->string()->notNull(),
            'branch_no'=> $this->string()->notNull()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%Property_for_rent}}');
    }
}

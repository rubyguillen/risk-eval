class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :agency
      t.integer :phone
      t.string :email

      t.timestamps
    end
    add_index :users, :email
  end
end

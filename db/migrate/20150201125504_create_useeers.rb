class CreateUseeers < ActiveRecord::Migration
  def change
    create_table :useeers do |t|
      t.string :login
      t.string :name
      t.string :surname
      t.string :role
      t.string :crypted_password
      t.boolean :admin
      t.string :persistence_token

      t.timestamps null: false
    end
  end
end

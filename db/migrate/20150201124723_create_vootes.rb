class CreateVootes < ActiveRecord::Migration
  def change
    create_table :vootes do |t|
      t.integer :number
      t.integer :id_const
      t.integer :id_com

      t.timestamps null: false
    end
  end
end

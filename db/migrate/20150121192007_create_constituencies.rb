class CreateConstituencies < ActiveRecord::Migration
  def change
    create_table :constituencies do |t|
      t.string :name
      t.integer :number_of_voters
    
      t.timestamps null: false
    end
  end
end

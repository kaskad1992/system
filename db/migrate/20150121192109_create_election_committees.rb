class CreateElectionCommittees < ActiveRecord::Migration
  def change
    create_table :election_committees do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

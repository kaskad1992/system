class AddVotesToCommittee < ActiveRecord::Migration
  def change
    add_column :committees, :votes, :integer
  end
end

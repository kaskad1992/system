class AddVotesToConstituency < ActiveRecord::Migration
  def change
    add_column :constituencies, :votes, :integer
  end
end

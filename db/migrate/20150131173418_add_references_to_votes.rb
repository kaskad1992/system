class AddReferencesToVotes < ActiveRecord::Migration
  def change
    add_reference :votes, :constituency, index: true
    add_foreign_key :votes, :constituencies
    add_reference :votes, :election_committee, index: true
    add_foreign_key :votes, :election_committees
  end
end

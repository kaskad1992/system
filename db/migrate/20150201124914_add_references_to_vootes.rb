class AddReferencesToVootes < ActiveRecord::Migration
  def change
    add_reference :vootes, :constituency, index: true
    add_foreign_key :vootes, :constituencies
    add_reference :vootes, :committee, index: true
    add_foreign_key :vootes, :committees
  end
end

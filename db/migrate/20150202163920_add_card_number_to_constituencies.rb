class AddCardNumberToConstituencies < ActiveRecord::Migration
  def change
    add_column :constituencies, :card_number, :integer
  end
end

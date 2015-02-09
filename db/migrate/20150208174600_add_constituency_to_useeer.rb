class AddConstituencyToUseeer < ActiveRecord::Migration
  def change
    add_column :useeers, :constituency, :integer
  end
end

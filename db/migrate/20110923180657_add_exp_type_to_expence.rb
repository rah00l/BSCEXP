class AddExpTypeToExpence < ActiveRecord::Migration
  def self.up
    add_column :expences, :exp_type, :boolean ,:default => false
  end

  def self.down
    remove_column :expences, :exp_type
  end
end

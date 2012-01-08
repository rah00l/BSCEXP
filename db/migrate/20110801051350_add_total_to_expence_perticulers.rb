class AddTotalToExpencePerticulers < ActiveRecord::Migration
  def self.up
    add_column :expence_perticulers, :total, :integer, :default => 0
    add_column :expence_perticulers, :adjusted_total, :integer, :default => 0
  end

  def self.down
    remove_column :expence_perticulers, :total
    remove_column :expence_perticulers, :adjusted_total
  end
end

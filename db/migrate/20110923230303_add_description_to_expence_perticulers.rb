class AddDescriptionToExpencePerticulers < ActiveRecord::Migration
  def self.up
    add_column :expence_perticulers, :description, :string
  end

  def self.down
    remove_column :expence_perticulers, :description
  end
end

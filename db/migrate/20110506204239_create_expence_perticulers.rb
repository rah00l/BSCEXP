class CreateExpencePerticulers < ActiveRecord::Migration
  def self.up
    create_table :expence_perticulers do |t|
      t.integer :expence_id
      t.float :exp_value
      t.string :cluser_name
      t.string :shop_name
      t.date :date

      #t.timestamps
    end
  end

  def self.down
    drop_table :expence_perticulers
  end
end

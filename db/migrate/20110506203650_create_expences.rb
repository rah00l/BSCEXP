class CreateExpences < ActiveRecord::Migration
  def self.up
    create_table :expences do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :expences
  end
end

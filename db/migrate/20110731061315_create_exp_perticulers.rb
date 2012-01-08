class CreateExpPerticulers < ActiveRecord::Migration
  def self.up
    create_table :exp_perticulers do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :exp_perticulers
  end
end

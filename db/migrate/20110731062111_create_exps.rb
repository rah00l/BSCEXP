class CreateExps < ActiveRecord::Migration
  def self.up
    create_table :exps do |t|
      t.integer :exp_perticuler_id
      t.integer :exp_value
      t.string :cluster_name
      t.string :shop_name
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :exps
  end
end

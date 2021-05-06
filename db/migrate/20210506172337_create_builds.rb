class CreateBuilds < ActiveRecord::Migration[6.1]
  def change
    create_table :builds do |t|
      t.string :arrow_shaft
      t.string :insert_weight
      t.decimal :draw_length
      t.integer :draw_weight

      t.timestamps
    end
  end
end

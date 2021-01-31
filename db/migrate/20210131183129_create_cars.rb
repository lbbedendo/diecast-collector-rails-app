class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :modelYear
      t.string :scale
      t.string :colorRgba
      t.references :automaker, foreign_key: true
      t.references :collection, foreign_key: true
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end

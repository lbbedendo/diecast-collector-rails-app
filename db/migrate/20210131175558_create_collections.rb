class CreateCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :collections do |t|
      t.string :name, null: false
      t.integer :year

      t.timestamps
    end
  end
end

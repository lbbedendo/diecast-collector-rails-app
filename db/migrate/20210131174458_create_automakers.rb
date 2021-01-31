class CreateAutomakers < ActiveRecord::Migration[6.1]
  def change
    create_table :automakers do |t|
      t.string :name
      t.string :country

      t.timestamps
    end
  end
end

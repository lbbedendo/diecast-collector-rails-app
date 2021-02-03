class AlterColumnBrandId < ActiveRecord::Migration[6.1]
  def change
    change_column_null :cars, :brand_id, true
  end
end

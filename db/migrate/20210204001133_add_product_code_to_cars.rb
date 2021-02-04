class AddProductCodeToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :product_code, :string
  end
end

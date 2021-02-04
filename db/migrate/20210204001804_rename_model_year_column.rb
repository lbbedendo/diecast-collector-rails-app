class RenameModelYearColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :cars, :modelYear, :model_year
  end
end

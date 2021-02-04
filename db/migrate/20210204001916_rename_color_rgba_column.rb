class RenameColorRgbaColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :cars, :colorRgba, :color
  end
end

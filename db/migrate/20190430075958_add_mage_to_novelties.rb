class AddImageToNovelties < ActiveRecord::Migration[5.2]
  def change
    add_column :novelties, :image, :string
  end
end

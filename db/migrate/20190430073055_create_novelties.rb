class CreateNovelties < ActiveRecord::Migration[5.2]
  def change
    create_table :novelties do |t|
      t.string :title
      t.text   :text
      t.timestamps
      t.string :image
    end
  end
end

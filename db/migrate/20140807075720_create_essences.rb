class CreateEssences < ActiveRecord::Migration
  def change
    create_table :essences do |t|
      t.string :title
      t.text :description
      t.text :exp
      t.string :img_url
      t.decimal :price
      t.integer :type
      t.string :locate
      t.integer :rating
      t.text :exp

      t.timestamps
    end
  end
end

class CreateBeers < ActiveRecord::Migration[7.1]
  def change
    create_table :beers do |t|
      t.string :sku
      t.string :name
      t.references :category, null: false, foreign_key: true
      t.string :photo_url

      t.timestamps
    end
  end
end

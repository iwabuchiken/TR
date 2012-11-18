class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.text :text
      t.string :url
      t.integer :lang_id
      t.integer :genre_id
      t.string :sub_genre_id

      t.timestamps
    end
  end
end

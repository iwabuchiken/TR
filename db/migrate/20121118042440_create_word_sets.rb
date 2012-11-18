class CreateWordSets < ActiveRecord::Migration
  def change
    create_table :word_sets do |t|
      t.string :word_a
      t.string :word_b
      t.string :word_c
      t.integer :lang_id
      t.integer :text_id
      t.string :text_ids

      t.timestamps
    end
  end
end

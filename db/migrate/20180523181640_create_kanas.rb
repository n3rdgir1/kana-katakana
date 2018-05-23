class CreateKanas < ActiveRecord::Migration[5.2]
  def change
    create_table :kanas do |t|
      t.string :letter
      t.string :hiragana
      t.string :katakana

      t.timestamps
    end
  end
end

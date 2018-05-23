ActiveAdmin.register Kana do
  permit_params :letter, :katakana, :hiragana

  index do
    id_column
    column :letter
    column :katakana
    column :hiragana

    actions
  end
end

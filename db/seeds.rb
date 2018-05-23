# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if AdminUser.count == 0 && Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end

if Kana.count == 0
  kana = [
    ["a"  ,"あ","ア"],
    ["i"  ,"い","イ"],
    ["u"  ,"う","ウ"],
    ["e"  ,"え","エ"],
    ["o"  ,"お","オ"],
    ["ba" ,"ば","バ"],
    ["bi" ,"び","ビ"],
    ["bu" ,"ぶ","ブ"],
    ["be" ,"べ","ベ"],
    ["bo" ,"ぼ","ボ"],
    ["da" ,"だ","ダ"],
    ["di" ,"ぢ","ヂ"],
    ["du" ,"づ","ヅ"],
    ["de" ,"で","デ"],
    ["do" ,"ど","ド"],
    ["ga" ,"が","ガ"],
    ["gi" ,"ぎ","ギ"],
    ["gu" ,"ぐ","グ"],
    ["ge" ,"げ","ゲ"],
    ["go" ,"ご","ゴ"],
    ["ha" ,"は","ハ"],
    ["hi" ,"ひ","ヒ"],
    ["fu" ,"ふ","フ"],
    ["he" ,"へ","ヘ"],
    ["ho" ,"ほ","ホ"],
    ["ka" ,"か","カ"],
    ["ki" ,"き","キ"],
    ["ku" ,"く","ク"],
    ["ke" ,"け","ケ"],
    ["ko" ,"こ","コ"],
    ["ma" ,"ま","マ"],
    ["mi" ,"み","ミ"],
    ["mu" ,"む","ム"],
    ["me" ,"め","メ"],
    ["mo" ,"も","モ"],
    ["na" ,"な","ナ"],
    ["ni" ,"に","ニ"],
    ["nu" ,"ぬ","ヌ"],
    ["ne" ,"ね","ネ"],
    ["no" ,"の","ノ"],
    ["pa" ,"ぱ","パ"],
    ["pi" ,"ぴ","ピ"],
    ["pu" ,"ぷ","プ"],
    ["pe" ,"ぺ","ペ"],
    ["po" ,"ぽ","ポ"],
    ["ra" ,"ら","ラ"],
    ["ri" ,"リ","リ"],
    ["ru" ,"る","ル"],
    ["re" ,"れ","レ"],
    ["ro" ,"ろ","ロ"],
    ["sa" ,"さ","サ"],
    ["shi","し","シ"],
    ["su" ,"す","ス"],
    ["se" ,"せ","セ"],
    ["so" ,"そ","ソ"],
    ["ta" ,"た","タ"],
    ["chi","ち","チ"],
    ["tsu","つ","ツ"],
    ["te" ,"て","テ"],
    ["to" ,"と","ト"],
    ["wa" ,"わ","ワ"],
    ["wo" ,"を","ヲ"],
    ["ya" ,"や","ヤ"],
    ["yu" ,"ゆ","ユ"],
    ["yo" ,"よ","ヨ"],
    ["za" ,"ざ","ザ"],
    ["ji" ,"じ","ジ"],
    ["zu" ,"ず","ズ"],
    ["ze" ,"ぜ","ゼ"],
    ["zo" ,"ぞ","ゾ"],
    ["n"  ,"ん","ン"]
  ]

  kana.each do |letter, hiragana, katakana|
  k = Kana.create(letter: letter, hiragana: hiragana, katakana: katakana)
  puts k
end
end

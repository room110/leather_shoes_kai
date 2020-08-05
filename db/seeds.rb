# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
             email: "shoes@admin",
             password: "@admin",
             password_confirmation: "@admin")

#
Brand.create!( name: "ジョン・ロブ")

Brand.create!( name: "エドワード・グリーン")

Brand.create!( name: "クロケット＆ジョーンズ")

Brand.create!( name: "トリッカーズ")

Brand.create!( name: "チャーチ")

Brand.create!( name: "ステファノ・ベーメル")

Brand.create!( name: "サントーニ")

Brand.create!( name: "シルヴァノ・ラッタンツィ")

Brand.create!( name: "エンツォ・ボナフェ")

Brand.create!( name: "ジェイエム・ウェストン")

Brand.create!( name: "ベルルッティ")

Brand.create!( name: "オールデン")

Brand.create!( name: "パラブーツ")

Brand.create!( name: "アレン・エドモンズ")

Brand.create!( name: "カルミナ")

Brand.create!( name: "シェットランド・フォックス")

Brand.create!( name: "山陽山長")

Brand.create!( name: "その他")


#shoes sizes
Size.create!( name: "23.5")

Size.create!( name: "24")

Size.create!( name: "24.5")

Size.create!( name: "25")

Size.create!( name: "25.5")

Size.create!( name: "26")

Size.create!( name: "26.5")

Size.create!( name: "27")

Size.create!( name: "27.5")

Size.create!( name: "28")

Size.create!( name: "28.5")

Size.create!( name: "29")

#shoes types
Type.create!( name: "ストレートチップ")

Type.create!( name: "プレーントゥ")

Type.create!( name: "ウィングチップ")

Type.create!( name: "ホールカット")

Type.create!( name: "Uチップ")

Type.create!( name: "Vチップ")

Type.create!( name: "モンクストラップ")

Type.create!( name: "ローファ")

Type.create!( name: "スリップオン")

Type.create!( name: "サドルシューズ")

Type.create!( name: "チャッカブーツ")

Type.create!( name: "ジョッパーブーツ")

Type.create!( name: "サイドゴアブーツ")

#leather types
Leather.create!( name: "カーフ")

Leather.create!( name: "キップ")

Leather.create!( name: "ステア")

Leather.create!( name: "スウェード")

Leather.create!( name: "オイルレザー")

Leather.create!( name: "シュリンクレザー")

Leather.create!( name: "コードバン")

Leather.create!( name: "ベロア")

Leather.create!( name: "オーストリッチ")

Leather.create!( name: "クロコダイル")

Leather.create!( name: "エナメル")

Leather.create!( name: "その他")

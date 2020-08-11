# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
	         name: "admin",
             email: "admin@admin",
             password: "@admin",
             password_confirmation: "@admin")

#Userサンプル
User.create!(
	         name: "斎藤学",
             email: "aa11@aa",
             introduction: "ジョンロブが好きです。",
             profile_image_id: "",
             password: "@users",
             password_confirmation: "@users")
User.create!(
	         name: "後藤輝喜さん",
             email: "bb22@bb",
             introduction: "エドワードグリーンが好きです。",
             profile_image_id: "",
             password: "@users",
             password_confirmation: "@users")
User.create!(
	         name: "鈴木武雄",
             email: "cc33@aa",
             introduction: "チャーチが好きです。",
             profile_image_id: "",
             password: "@users",
             password_confirmation: "@users")
User.create!(
	         name: "吉澤涼",
             email: "dd44@aa",
             introduction: "トリッカーズが好きです。",
             profile_image_id: "",
             password: "@users",
             password_confirmation: "@users")
User.create!(
	         name: "大塚佑",
             email: "ee55@aa",
             introduction: "ジェイエムウェストンが好きです。",
             profile_image_id: "",
             password: "@users",
             password_confirmation: "@users")
User.create!(
	         name: "忍野進",
             email: "ee66@aa",
             introduction: "山陽山町が好きです。",
             profile_image_id: "",
             password: "@users",
             password_confirmation: "@users")
User.create!(
	         name: "山本重成",
             email: "ff77@aa",
             introduction: "パラブーツが好きです。",
             profile_image_id: "",
             password: "@users",
             password_confirmation: "@users")
User.create!(
	         name: "街道快適",
             email: "gg88@aa",
             introduction: "カルミナが好きです。",
             profile_image_id: "",
             password: "@users",
             password_confirmation: "@users")
User.create!(
	         name: "友達多目",
             email: "hh99@aa",
             introduction: "オールデンが好きです。",
             profile_image_id: "",
             password: "@users",
             password_confirmation: "@users")
User.create!(
	         name: "成田春樹",
             email: "ii1010@aa",
             introduction: "アレンエドモンズが好きです。",
             profile_image_id: "",
             password: "@users",
             password_confirmation: "@users")
User.create!(
	         name: "一所懸命",
             email: "jj1111@aa",
             introduction: "ベルルッティが好きです。",
             profile_image_id: "",
             password: "@users",
             password_confirmation: "@users")

#ブランド
Brand.create!( name: "ジョンロブ")

Brand.create!( name: "エドワードグリーン")

Brand.create!( name: "クロケット＆ジョーンズ")

Brand.create!( name: "トリッカーズ")

Brand.create!( name: "チャーチ")

Brand.create!( name: "ステファノベーメル")

Brand.create!( name: "サントーニ")

Brand.create!( name: "シルヴァノラッタンツィ")

Brand.create!( name: "エンツォボナフェ")

Brand.create!( name: "ジェイエムウェストン")

Brand.create!( name: "ベルルッティ")

Brand.create!( name: "オールデン")

Brand.create!( name: "パラブーツ")

Brand.create!( name: "アレンエドモンズ")

Brand.create!( name: "カルミナ")

Brand.create!( name: "シェットランドフォックス")

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

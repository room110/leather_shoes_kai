class CreateUserRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :user_relationships do |t|
    #relationshipsテーブルは中間テーブルなので、user_idとfollow_idは「t.references」で作る。
      t.references :user, foreign_key: true
      #follow_idの参照先のテーブルはusersテーブル
      t.references :follow, foreign_key: { to_table: :users }
      t.timestamps
    #重複するものが保存されないようにする
      t.index [:user_id, :follow_id], unique: true
    end
  end
end

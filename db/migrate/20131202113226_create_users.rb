class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :pwd
      t.string :secret_question
      t.boolean :verified
      t.string :gender
      t.datetime :birthdate
      t.string :phone
      t.string :photo
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :likes
      t.string :weburl
      t.string :biography
      t.string :education
      t.string :watchlist1
      t.string :watchlist2
      t.string :watchlist3
      t.boolean :communication_preferences1
      t.boolean :communication_preferences2
      t.boolean :communication_preferences3
      t.boolean :communication_preferences4

      t.timestamps
    end
  end
end

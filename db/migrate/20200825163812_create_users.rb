class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :github
      t.string :linkedin
      t.string :description
      t.string :profile_image
      t.string :cover_photo

      t.timestamps
    end
  end
end

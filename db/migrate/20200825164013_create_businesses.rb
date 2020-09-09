class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :industry
      t.string :logo
      t.string :description
      t.string :cover_photo
      t.string :job

      t.timestamps
    end
  end
end

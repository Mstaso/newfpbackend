class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :industry
      t.string :logo
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end

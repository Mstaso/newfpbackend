class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :business_id
      t.integer :user_id
      t.integer :match_percentage
      t.string :business_name
      t.string :user_name
         
      t.timestamps
    end
  end
end

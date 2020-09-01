class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :business_id
      t.integer :user_id
      t.boolean :status
         
      t.timestamps
    end
  end
end

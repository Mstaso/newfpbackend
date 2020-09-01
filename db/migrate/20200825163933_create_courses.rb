class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :image
      t.integer :rating
      t.string :category
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end

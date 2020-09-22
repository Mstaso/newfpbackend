class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :image
      t.string :workload
      t.string :category
      t.string :subcategory
      t.string :description
      t.string :cover_photo
      

      t.timestamps
    end
  end
end

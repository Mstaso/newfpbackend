class CreateUsercourses < ActiveRecord::Migration[6.0]
  def change
    create_table :usercourses do |t|
      t.integer :user_id
      t.integer :course_id
      t.boolean :status
      

      t.timestamps
    end
  end
end

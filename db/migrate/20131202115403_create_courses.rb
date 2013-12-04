class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :course_type
      t.float :price
      t.text :description
      t.references :user, index: true
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.integer :min_age
      t.integer :max_age
      t.integer :min_class_size
      t.integer :max_class_size
      t.boolean :required_gear
      t.text :required_gear_desc
      t.text :cancellation

      t.timestamps
    end
  end
end

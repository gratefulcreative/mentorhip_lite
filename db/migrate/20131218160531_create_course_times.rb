class CreateCourseTimes < ActiveRecord::Migration
  def change
    create_table :coursetimes do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :start_day
      t.datetime :end_day
      

      t.timestamps
    end
  end
end

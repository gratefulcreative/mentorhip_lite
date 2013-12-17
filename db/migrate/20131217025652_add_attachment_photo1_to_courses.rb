class AddAttachmentPhoto1ToCourses < ActiveRecord::Migration
  def self.up
    change_table :courses do |t|
      t.attachment :photo1
    end
  end

  def self.down
    drop_attached_file :courses, :photo1
  end
end

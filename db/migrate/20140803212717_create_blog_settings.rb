class CreateBlogSettings < ActiveRecord::Migration
  def change
    create_table :blog_settings do |t|
      t.string :blog_name

      t.timestamps
    end
  end
end

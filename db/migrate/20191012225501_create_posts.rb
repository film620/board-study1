class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      
      t.text:title
      t.text:content
      t.text:name
      t.text:password

      t.timestamps
    end
  end
end

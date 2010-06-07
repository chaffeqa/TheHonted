class CreateRemoteImageContents < ActiveRecord::Migration
  def self.up
    create_table :remote_image_contents do |t|
      t.string :image_name
      t.string :image_type
      t.integer :image_size
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :remote_image_contents
  end
end

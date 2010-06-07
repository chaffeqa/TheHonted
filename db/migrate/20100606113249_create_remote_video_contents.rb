class CreateRemoteVideoContents < ActiveRecord::Migration
  def self.up
    create_table :remote_video_contents do |t|
      t.string :video_name
      t.string :video_type
      t.integer :video_size
      t.string :video_url

      t.timestamps
    end
  end

  def self.down
    drop_table :remote_video_contents
  end
end

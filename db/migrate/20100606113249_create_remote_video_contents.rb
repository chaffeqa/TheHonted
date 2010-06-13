class CreateRemoteVideoContents < ActiveRecord::Migration
  def self.up
    create_table :remote_video_contents do |t|
      t.string :video_name
      t.string :video_type
      t.string :video_url
      t.string :video_alt_url
      t.string :video_embedded

      t.timestamps
    end
  end

  def self.down
    drop_table :remote_video_contents
  end
end

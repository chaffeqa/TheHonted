class CreateTextContents < ActiveRecord::Migration
  def self.up
    create_table :text_contents do |t|
      t.text :text_content

      t.timestamps
    end
  end

  def self.down
    drop_table :text_contents
  end
end

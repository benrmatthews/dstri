class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.text :about
      t.string :link
      t.string :rss_feed

      t.timestamps
    end
  end
end

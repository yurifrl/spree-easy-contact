class CreateTopics < ActiveRecord::Migration
  def self.up
    unless table_exists? :spree_topics
      create_table :spree_topics do |t|
        t.string :title
        t.string :email
        t.boolean :active

        t.timestamps
      end
    end
  end

  def self.down
    if table_exists? :spree_topics
      drop_table :spree_topics
    end
  end
end

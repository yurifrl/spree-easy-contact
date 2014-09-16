class CreateContacts < ActiveRecord::Migration
  def self.up
    unless table_exists? :spree_contacts
      create_table :spree_contacts do |t|
        t.string :name
        t.string :email
        t.string :order_number
        t.text :message
        t.integer :topic_id

        t.timestamps
      end
      add_index :spree_contacts, :topic_id
    end
  end

  def self.down
    if table_exists? :spree_contacts
      drop_table :spree_contacts
      remove_index :spree_contacts, :topic_id
    end
  end
end

class CreateInvitations < ActiveRecord::Migration
  def self.up
    create_table :invitations do |t|
      t.integer :user_id, :null => false
      t.integer :recipient, :limit => 8, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :invitations
  end
end

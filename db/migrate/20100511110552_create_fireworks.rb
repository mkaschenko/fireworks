class CreateFireworks < ActiveRecord::Migration
  def self.up
    create_table :fireworks do |t|
      t.string :name, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :fireworks
  end
end

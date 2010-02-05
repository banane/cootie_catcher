class CreateFortunes < ActiveRecord::Migration
  def self.up
    create_table :fortunes do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :fortunes
  end
end

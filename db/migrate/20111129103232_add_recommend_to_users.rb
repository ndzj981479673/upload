class AddRecommendToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :recommend, :boolean
  end

  def self.down
    remove_column :users, :recommend
  end
end

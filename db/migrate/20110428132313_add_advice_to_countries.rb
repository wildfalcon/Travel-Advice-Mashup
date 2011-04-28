class AddAdviceToCountries < ActiveRecord::Migration
  def self.up
    add_column :countries, :advice, :text
  end

  def self.down
    remove_column :countries, :advice
  end
end

class AddPremiumUntilToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :premium_until, :date
  end
end

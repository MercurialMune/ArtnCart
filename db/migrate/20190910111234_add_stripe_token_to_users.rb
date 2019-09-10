class AddStripeTokenToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :stripe_token, :string
  end
end

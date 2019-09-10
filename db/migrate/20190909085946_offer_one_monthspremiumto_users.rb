class OfferOneMonthspremiumtoUsers < ActiveRecord::Migration[6.0]
  def change
  end

  def up
    premium_until_offer = DateTime.now + 1.month
    User.all.each { |user| user.update! premium_until: premium_until_offer }
  end
end

# frozen_string_literal: true

module LibrariesHelper
  def user_library(user)
    purchases = user.purchases
    library = []
    purchases.each do |purchase|
      time_diff = ((Time.now - purchase.created_at) / 1.hour)
      library.push(purchase.purchasable) if time_diff <= 48
    end
    library
    end
end

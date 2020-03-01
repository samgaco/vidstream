# frozen_string_literal: true

module LibrariesHelper

  def time_left(time)
      ((time + 2.days - Time.now) / 1.hour).round(1)
  end

  def user_library(user)
    purchases = user.purchases
    library = []
    purchases.each do |purchase|
      time = purchase.created_at
      time_diff = ((Time.now - time) / 1.hour)
      library.push([purchase.purchasable, time_left(time)]) if time_diff <= 48
    end
    library
  end
end

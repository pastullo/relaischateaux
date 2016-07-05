module RoomsHelper
  def room_price room
    number_to_currency(room.from_price, unit: "#{room.currency} ", precision: 0)
    # if CURRENCIES[I18n.locale]
    #   number_to_currency((room.from_price * CURRENCIES[I18n.locale][:conversion] ), unit: "#{CURRENCIES[I18n.locale][:currency]} ", precision: 0)
    # end
  end

  def price_type room
    if room.price_type.present?
      I18n.t(room.price_type)
    end
  end
end

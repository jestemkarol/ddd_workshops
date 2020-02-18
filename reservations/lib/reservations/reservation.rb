module Reservations
  class Reservation

    attr_accessor :order_id

    def initialize(order_id:)
      @order_id = order_id
    end

    def save!
      self
    end
  end
end

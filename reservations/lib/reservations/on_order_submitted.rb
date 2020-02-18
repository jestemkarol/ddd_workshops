module Reservations
  class OnOrderSubmitted < ActiveJob::Base
    prepend RailsEventStore::AsyncHandler

    def perform(event)
      order_id = event.data[:order_id]

      Reservation.new(order_id: order_id).save!
      Rails.logger.info 'Reservation made!'
    end
  end
end

module Ordering
  class OrderService
    def submit
      uuid = SecureRandom.uuid
      ApplicationRecord.transaction do
        order  = Order.new(uuid: uuid)
        events = order.submit
        order.save!
        event_store.publish(events, stream_name: "Order$#{uuid}")
      end
    end

    def event_store
      Rails.configuration.event_store
    end
  end
end

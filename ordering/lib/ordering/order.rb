module Ordering
  class Order

    attr_accessor :state

    def initialize(uuid:, state: 'created')
      @state = state
    end

    def submit
      state = 'submitted'
      OrderSubmitted.new(data: {})
    end

    def save!
      self
    end
  end
end

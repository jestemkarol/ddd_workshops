module Invoicing
  module ValueObject
    class VatRate
      attr_accessor :value, :percentage

      def initialize(value, percentage)
        @value = value * percentage
        @percentage = percentage
      end
    end
  end
end

module Invoicing
  module ValueObject
    class Discount
      def initialize(type, value)
        @type = type
        @value = value
      end

      def calculate(amount)
        case type
        when 'percentage'
          amount * adjusted_percentage
        when 'amount'
          amount - value
        end
      end

      private

      def adjusted_percentage
        return 1 unless value

        value > 1.1 ? 1.1 : value
      end
    end
  end
end

module Invoicing
  module ValueObject
    class Amount
      attr_accessor :value

      def initialize(value)
        @value = value
      end
    end
  end
end

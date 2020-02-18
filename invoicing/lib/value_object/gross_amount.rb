module Invoicing
  module ValueObject
    class GrossAmount
      attr_accessor :value, :vat_rate

      def initialize(value, vat_rate)
        @value = value + vat_rate
        @vat_rate = vat_rate
      end
    end
  end
end

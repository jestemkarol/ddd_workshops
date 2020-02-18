module Invoicing
  class InvoiceItem
    attr_reader :amount

    def initialize(amount, vat_percentage: 1.23, discount: ValueObject::Discount)
      @amount = apply_discount(ValueObject::Amount.new(amount).value)
      @vat_percentage = vat_percentage
    end

    def vat_rate
      ValueObject::VatRate.new(amount, vat_percentage).value
    end

    def gross_amount
      ValueObject::GrossAmount.new(amount, vat_rate).value
    end

    private

    attr_reader :vat_percentage

    def apply_discount(amount)
      return amount unless discount.value

      discount.calculate(amount)
    end
  end
end

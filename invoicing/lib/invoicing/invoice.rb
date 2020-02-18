module Invoicing
  class Invoice

    attr_accessor :amount, :gross_amount, :vat_rate

    def initialize(invoice_items: [])
      @invoice_items = invoice_items
      @amount = invoice_items.sum(:amount)
      @gross_amount = invoice_items.sum(:gross_amount)
    end

    def add_to_invoice(invoice_items = [])
      invoice_items << invoice_items
      self
    end

    def save!
      self
    end

    def self.find(id); end

  end
end

require_relative 'test_helper'

module Investments
  class StockTest < Minitest::Test
    def test_if_exists
      assert Stock
    end
  end
end

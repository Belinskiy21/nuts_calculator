# frozen_string_literal: true

# This is where the calculation logic lives
class Calculator
  attr_reader :destination, :nuts_amount, :fee_unit, :capacity

  def initialize(destination, nuts_amount, fee_unit, capacity)
    @destination = destination
    @nuts_amount = nuts_amount
    @fee_unit = fee_unit
    @capacity = capacity
  end

  def deliverable_amount
    return 0 if transportation_fee > capacity || transportation_fee > nuts_amount

    @deliverable_amount ||= capacity - transportation_fee
  end

  private

  def transportation_fee
    @transportation_fee ||= destination * fee_unit
  end
end

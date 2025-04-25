# frozen_string_literal: true

class BasePolicy
  attr_reader :record

  def initialize(record)
    @record = record
  end

  def method_missing(m, *arg, &block)
    false
  end
end

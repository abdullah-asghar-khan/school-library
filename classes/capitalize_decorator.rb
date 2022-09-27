require_relative 'base_decorator'

# This is CapitalizeDecorator class
class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

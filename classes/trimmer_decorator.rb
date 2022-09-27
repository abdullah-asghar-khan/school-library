require_relative 'base_decorator'

# This is TrimmerDecorator class
class TrimmerDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name[0...10]
  end
end

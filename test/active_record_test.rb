require 'test_helper'

class IncompleteDateAttrTest < ActiveSupport::TestCase
  def test_model_responds_to_date
    model = dummy_models(:complete)
    assert model.respond_to? :date, 'Model does not respond to the date method at all'
  end
  def test_model_with_incomplete_date_responds_correctly
    model = dummy_models(:incomplete)
    assert_equal model.date.class, IncompleteDate, 'Model responds to incomplete date with something else than incomplete date'
  end

  def test_model_with_complete_date_responds_correctly
    model = dummy_models(:complete)
    assert_equal model.date.to_date.class, Date, 'Model does to respond with a date when it has all the information'
  end
end

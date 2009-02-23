require 'incomplete_date'
require 'hooks/date'
require 'hooks/active_record'
require 'hooks/form_builder'

class ActiveRecord::Base
  extend IncompleteDate::ActiveRecord::ClassMethods
end

class Date
  include IncompleteDate::Date::InstanceMethods
end

module ActionView::Helpers
  class FormBuilder
    include IncompleteDate::FormBuilder::InstanceMethods
  end
end
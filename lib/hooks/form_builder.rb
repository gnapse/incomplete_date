class IncompleteDate
  module FormBuilder
    module InstanceMethods
      def incomplete_date_select(method, options = {}, html_options = {})
        date = @object.send(method) || (Date.today - 50.years)
        date = date.to_incomplete_date
        options.merge!(:prefix => @object_name, :include_blank => true)
        # TODO: The +year+ and +circa+ tags don't have the standard +id+ according to its names.
        @template.text_field_tag("#{@object_name}[#{method}][year]", date.year, :size => 5, :maxlength => 4) + ' ' +
        @template.select_month(date, options.merge(:field_name => "#{method}][month")) + ' ' +
        @template.select_day(date, options.merge(:field_name => "#{method}][day")) + ' ' +
        @template.check_box_tag("#{@object_name}[#{method}][circa]", '1', date.circa) + ' circa'
      end
    end
  end
end
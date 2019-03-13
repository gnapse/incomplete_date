class IncompleteDate
  module Date::InstanceMethods
    def circa
      false
    end
    alias circa? circa

    def to_birthday
      IncompleteDate.new(:month => month, :day => day)
    end

    def to_i
      year*10000 + month*100 + day
    end

    def to_incomplete_date
      IncompleteDate.new(self)
    end

    def matches?(incomplete_date)
      incomplete_date.include?(self)
    end
  end
end
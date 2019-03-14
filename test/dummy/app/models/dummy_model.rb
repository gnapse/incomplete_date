class DummyModel < ApplicationRecord
  incomplete_date_attr :date, prefix: :raw
end

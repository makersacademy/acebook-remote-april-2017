class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  self.record_timestamps = true
end

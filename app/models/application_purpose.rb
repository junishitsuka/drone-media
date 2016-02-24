class ApplicationPurpose < ActiveRecord::Base
  belongs_to :application
  has_one :purpose
end

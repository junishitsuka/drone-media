class Application < ActiveRecord::Base
  has_many :application_purposes
  has_many :application_targets
  has_one :prefecture
end

class ApplicationTarget < ActiveRecord::Base
  belongs_to :application
  has_one :target
end

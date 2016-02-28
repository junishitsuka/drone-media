class Application < ActiveRecord::Base
  has_many :application_purposes, dependent: :destroy
  has_many :purposes, :through => :application_purposes
  has_many :application_targets, dependent: :destroy
  has_many :targets, :through => :application_targets
  has_one :prefecture
end

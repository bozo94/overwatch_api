class Ability < ApplicationRecord
  include FriendlyId
  friendly_id :name, :use => [:slugged]

  belongs_to :hero
  validates_presence_of :name, :description
end
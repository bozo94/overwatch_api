class Hero < ApplicationRecord
  include FriendlyId
  friendly_id :real_name, :use => [:slugged]

  has_many :abilities, dependent: :destroy
  validates_presence_of :name, :real_name, :health, :armour, :shield
end
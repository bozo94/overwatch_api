class Hero < ApplicationRecord
  include FriendlyId
  friendly_id :real_name, :use => [:slugged]

  has_many :abilities
end
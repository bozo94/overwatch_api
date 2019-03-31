class Hero < ApplicationRecord
  self.table_name = "heroes"
  include FriendlyId
  friendly_id :real_name, :use => [:slugged]

  has_many :abilities
end
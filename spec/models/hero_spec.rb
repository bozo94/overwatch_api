require 'rails_helper'

# Test suite for the hero model
RSpec.describe Hero, type: :model do
  # Association test
  # ensure hero model has a 1:m relationship with the Item model
  it { should have_many(:abilities).dependent(:destroy) }
  # Validation tests
  # ensure all columns are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:real_name) }
  it { should validate_presence_of(:health) }
  it { should validate_presence_of(:armour) }
  it { should validate_presence_of(:shield) }
end
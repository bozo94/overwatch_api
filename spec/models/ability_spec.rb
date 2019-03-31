require 'rails_helper'

# Test suite for the ability model
RSpec.describe Ability, type: :model do
  # Association test
  # ensure ability model has a 1:m relationship with the Item model
  it { should belong_to(:hero) }
  # Validation tests
  # ensure all columns are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
end
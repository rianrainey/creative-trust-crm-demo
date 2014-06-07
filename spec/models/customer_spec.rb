require 'rails_helper'

describe Customer do
  describe 'validations' do
    it { should validate_presence_of :name }
  end

  describe 'associations' do
    it { is_expected.to have_many(:products) }
  end
end

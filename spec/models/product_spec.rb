require 'rails_helper'

RSpec.describe Product, :type => :model do
  describe 'attributes' do
    #it 'includes :name attribute' do
      #expect(subject.attributes).to include('name')
    #end

    ['name', 'description', 'price'].each do |attribute|
      it 'includes :#{attribute} attribute' do
        expect(subject.attributes).to include(attribute)
      end
    end
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :description }
  end

  describe 'associations' do
    it { is_expected.to belong_to(:customer) }
  end
end

require 'rails_helper'
require 'pry'

describe CustomersController do
  describe 'Get #index' do
    it 'responds successfully with a 200 HTTP Status Code' do
      get :index
      expect(response).to be_success
      expect(response.status).to be 200
      expect(response.status).to eq 200
    end

  end
  describe 'Get #creative' do
    it 'responds successfully' do
      get :creative
      expect(response).to be_success
      expect(response.status).to be 200
    end
  end
end

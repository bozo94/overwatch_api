require 'rails_helper'

RSpec.describe 'Abilities API', type: :request do
  # initialize test data 
  before :all do 
    Ability.destroy_all
  end
  let!(:abilities) { create_list(:ability, 10) }
  let(:ability_id) { abilities.first.id }

  # Test suite for GET /api/abilities
  describe 'GET /api/abilities' do
    # make HTTP get request before each example
    before { get '/api/abilities' }

    it 'returns abilities' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(110)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /api/abilities/:id
  describe 'GET /api/abilities/:id' do
    before { get "/api/abilities/#{ability_id}" }

    context 'when the record exists' do
      it 'returns the ability' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(ability_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:ability_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Ability/)
      end
    end
  end

end
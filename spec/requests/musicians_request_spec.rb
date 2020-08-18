# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Musicians', type: :request do
  before(:each) do
    @musician = create(:local_musician)
  end

  describe 'POST /create' do
    it 'returns http post created with JSON of updated list of Musicians' do
      post '/musicians', params: { musician: { name: 'Judah Tha Lion',
                                               age: @musician.age,
                                               active: @musician.active } }
      expect(response).to have_http_status(:created)
    end
  end

  describe 'GET /index' do
    it 'returns JSON list of all Musicians' do
      get '/musicians'
      expect(JSON(response.body).fetch('musicians').length).to eq(1)
    end
  end

  describe 'PATCH /update' do
    it 'returns updated JSON list of all Musicians' do
      patch "/musicians/#{LocalMusician.first.id}",
            params: { musician: { age: 40 } }
      expect(response).to have_http_status(:ok)
    end
  end
end

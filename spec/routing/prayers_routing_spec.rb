require 'rails_helper'

RSpec.describe PrayersController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/prayers').to route_to('prayers#index')
    end

    it 'routes to #new' do
      expect(get: '/prayers/new').to route_to('prayers#new')
    end

    it 'routes to #show' do
      expect(get: '/prayers/1').to route_to('prayers#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/prayers/1/edit').to route_to('prayers#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/prayers').to route_to('prayers#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/prayers/1').to route_to('prayers#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/prayers/1').to route_to('prayers#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/prayers/1').to route_to('prayers#destroy', id: '1')
    end
  end
end

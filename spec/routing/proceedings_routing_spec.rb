require 'rails_helper'

RSpec.describe ProceedingsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/proceedings').to route_to('proceedings#index')
    end

    it 'routes to #new' do
      expect(get: '/proceedings/new').to route_to('proceedings#new')
    end

    it 'routes to #show' do
      expect(get: '/proceedings/1').to route_to('proceedings#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/proceedings/1/edit').to route_to('proceedings#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/proceedings').to route_to('proceedings#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/proceedings/1').to route_to('proceedings#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/proceedings/1').to route_to('proceedings#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/proceedings/1').to route_to('proceedings#destroy', id: '1')
    end
  end
end

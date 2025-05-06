# frozen_string_literal: true

require 'rails_helper'

RSpec.describe QuestRewardsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/quest_rewards').to route_to('quest_rewards#index')
    end

    it 'routes to #new' do
      expect(get: '/quest_rewards/new').to route_to('quest_rewards#new')
    end

    it 'routes to #show' do
      expect(get: '/quest_rewards/1').to route_to('quest_rewards#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/quest_rewards/1/edit').to route_to('quest_rewards#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/quest_rewards').to route_to('quest_rewards#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/quest_rewards/1').to route_to('quest_rewards#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/quest_rewards/1').to route_to('quest_rewards#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/quest_rewards/1').to route_to('quest_rewards#destroy', id: '1')
    end
  end
end

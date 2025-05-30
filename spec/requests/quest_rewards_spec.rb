# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/quest_rewards', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # QuestReward. As you add validations to QuestReward, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      QuestReward.create! valid_attributes
      get quest_rewards_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      quest_reward = QuestReward.create! valid_attributes
      get quest_reward_url(quest_reward)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_quest_reward_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      quest_reward = QuestReward.create! valid_attributes
      get edit_quest_reward_url(quest_reward)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new QuestReward' do
        expect do
          post quest_rewards_url, params: { quest_reward: valid_attributes }
        end.to change(QuestReward, :count).by(1)
      end

      it 'redirects to the created quest_reward' do
        post quest_rewards_url, params: { quest_reward: valid_attributes }
        expect(response).to redirect_to(quest_reward_url(QuestReward.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new QuestReward' do
        expect do
          post quest_rewards_url, params: { quest_reward: invalid_attributes }
        end.not_to change(QuestReward, :count)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post quest_rewards_url, params: { quest_reward: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested quest_reward' do
        quest_reward = QuestReward.create! valid_attributes
        patch quest_reward_url(quest_reward), params: { quest_reward: new_attributes }
        quest_reward.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the quest_reward' do
        quest_reward = QuestReward.create! valid_attributes
        patch quest_reward_url(quest_reward), params: { quest_reward: new_attributes }
        quest_reward.reload
        expect(response).to redirect_to(quest_reward_url(quest_reward))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        quest_reward = QuestReward.create! valid_attributes
        patch quest_reward_url(quest_reward), params: { quest_reward: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested quest_reward' do
      quest_reward = QuestReward.create! valid_attributes
      expect do
        delete quest_reward_url(quest_reward)
      end.to change(QuestReward, :count).by(-1)
    end

    it 'redirects to the quest_rewards list' do
      quest_reward = QuestReward.create! valid_attributes
      delete quest_reward_url(quest_reward)
      expect(response).to redirect_to(quest_rewards_url)
    end
  end
end

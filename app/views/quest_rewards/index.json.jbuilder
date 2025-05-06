# frozen_string_literal: true

json.array! @quest_rewards, partial: 'quest_rewards/quest_reward', as: :quest_reward

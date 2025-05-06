require 'rails_helper'

RSpec.describe "quest_rewards/show", type: :view do
  before(:each) do
    assign(:quest_reward, QuestReward.create!(
      reward_type: "Reward Type",
      amount: 2,
      quest: nil,
      item: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Reward Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

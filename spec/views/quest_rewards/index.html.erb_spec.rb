require 'rails_helper'

RSpec.describe "quest_rewards/index", type: :view do
  before(:each) do
    assign(:quest_rewards, [
      QuestReward.create!(
        reward_type: "Reward Type",
        amount: 2,
        quest: nil,
        item: nil
      ),
      QuestReward.create!(
        reward_type: "Reward Type",
        amount: 2,
        quest: nil,
        item: nil
      )
    ])
  end

  it "renders a list of quest_rewards" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Reward Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end

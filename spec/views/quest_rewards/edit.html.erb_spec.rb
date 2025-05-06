require 'rails_helper'

RSpec.describe "quest_rewards/edit", type: :view do
  let(:quest_reward) {
    QuestReward.create!(
      reward_type: "MyString",
      amount: 1,
      quest: nil,
      item: nil
    )
  }

  before(:each) do
    assign(:quest_reward, quest_reward)
  end

  it "renders the edit quest_reward form" do
    render

    assert_select "form[action=?][method=?]", quest_reward_path(quest_reward), "post" do

      assert_select "input[name=?]", "quest_reward[reward_type]"

      assert_select "input[name=?]", "quest_reward[amount]"

      assert_select "input[name=?]", "quest_reward[quest_id]"

      assert_select "input[name=?]", "quest_reward[item_id]"
    end
  end
end

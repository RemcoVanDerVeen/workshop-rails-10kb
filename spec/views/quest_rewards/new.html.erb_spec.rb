require 'rails_helper'

RSpec.describe "quest_rewards/new", type: :view do
  before(:each) do
    assign(:quest_reward, QuestReward.new(
      reward_type: "MyString",
      amount: 1,
      quest: nil,
      item: nil
    ))
  end

  it "renders new quest_reward form" do
    render

    assert_select "form[action=?][method=?]", quest_rewards_path, "post" do

      assert_select "input[name=?]", "quest_reward[reward_type]"

      assert_select "input[name=?]", "quest_reward[amount]"

      assert_select "input[name=?]", "quest_reward[quest_id]"

      assert_select "input[name=?]", "quest_reward[item_id]"
    end
  end
end

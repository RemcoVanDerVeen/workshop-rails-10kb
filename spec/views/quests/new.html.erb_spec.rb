require 'rails_helper'

RSpec.describe "quests/new", type: :view do
  before(:each) do
    assign(:quest, Quest.new(
      title: "MyString",
      difficulty: "MyString",
      reward_gold: 1,
      status: "MyString",
      hero: nil
    ))
  end

  it "renders new quest form" do
    render

    assert_select "form[action=?][method=?]", quests_path, "post" do

      assert_select "input[name=?]", "quest[title]"

      assert_select "input[name=?]", "quest[difficulty]"

      assert_select "input[name=?]", "quest[reward_gold]"

      assert_select "input[name=?]", "quest[status]"

      assert_select "input[name=?]", "quest[hero_id]"
    end
  end
end

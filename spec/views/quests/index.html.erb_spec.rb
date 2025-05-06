require 'rails_helper'

RSpec.describe "quests/index", type: :view do
  before(:each) do
    assign(:quests, [
      Quest.create!(
        title: "Title",
        difficulty: "Difficulty",
        reward_gold: 2,
        status: "Status",
        hero: nil
      ),
      Quest.create!(
        title: "Title",
        difficulty: "Difficulty",
        reward_gold: 2,
        status: "Status",
        hero: nil
      )
    ])
  end

  it "renders a list of quests" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Difficulty".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Status".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end

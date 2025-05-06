require 'rails_helper'

RSpec.describe "skills/index", type: :view do
  before(:each) do
    assign(:skills, [
      Skill.create!(
        name: "Name",
        element: "Element",
        mana_cost: 2,
        level_required: 3
      ),
      Skill.create!(
        name: "Name",
        element: "Element",
        mana_cost: 2,
        level_required: 3
      )
    ])
  end

  it "renders a list of skills" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Element".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end

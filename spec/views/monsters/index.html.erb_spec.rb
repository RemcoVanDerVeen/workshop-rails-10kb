require 'rails_helper'

RSpec.describe "monsters/index", type: :view do
  before(:each) do
    assign(:monsters, [
      Monster.create!(
        name: "Name",
        monster_type: "Monster Type",
        hit_points: 2,
        attack_power: 3
      ),
      Monster.create!(
        name: "Name",
        monster_type: "Monster Type",
        hit_points: 2,
        attack_power: 3
      )
    ])
  end

  it "renders a list of monsters" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Monster Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end

require 'rails_helper'

RSpec.describe "heros/index", type: :view do
  before(:each) do
    assign(:heros, [
      Hero.create!(
        name: "Name",
        level: 2,
        player_class: "Player Class",
        race: "Race",
        experience_points: 3,
        guild: nil
      ),
      Hero.create!(
        name: "Name",
        level: 2,
        player_class: "Player Class",
        race: "Race",
        experience_points: 3,
        guild: nil
      )
    ])
  end

  it "renders a list of heros" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Player Class".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Race".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end

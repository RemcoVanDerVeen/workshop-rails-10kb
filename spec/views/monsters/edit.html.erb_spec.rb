require 'rails_helper'

RSpec.describe "monsters/edit", type: :view do
  let(:monster) {
    Monster.create!(
      name: "MyString",
      monster_type: "MyString",
      hit_points: 1,
      attack_power: 1
    )
  }

  before(:each) do
    assign(:monster, monster)
  end

  it "renders the edit monster form" do
    render

    assert_select "form[action=?][method=?]", monster_path(monster), "post" do

      assert_select "input[name=?]", "monster[name]"

      assert_select "input[name=?]", "monster[monster_type]"

      assert_select "input[name=?]", "monster[hit_points]"

      assert_select "input[name=?]", "monster[attack_power]"
    end
  end
end

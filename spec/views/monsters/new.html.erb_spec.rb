require 'rails_helper'

RSpec.describe "monsters/new", type: :view do
  before(:each) do
    assign(:monster, Monster.new(
      name: "MyString",
      monster_type: "MyString",
      hit_points: 1,
      attack_power: 1
    ))
  end

  it "renders new monster form" do
    render

    assert_select "form[action=?][method=?]", monsters_path, "post" do

      assert_select "input[name=?]", "monster[name]"

      assert_select "input[name=?]", "monster[monster_type]"

      assert_select "input[name=?]", "monster[hit_points]"

      assert_select "input[name=?]", "monster[attack_power]"
    end
  end
end

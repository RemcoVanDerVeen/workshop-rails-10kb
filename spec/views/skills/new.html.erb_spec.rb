require 'rails_helper'

RSpec.describe "skills/new", type: :view do
  before(:each) do
    assign(:skill, Skill.new(
      name: "MyString",
      element: "MyString",
      mana_cost: 1,
      level_required: 1
    ))
  end

  it "renders new skill form" do
    render

    assert_select "form[action=?][method=?]", skills_path, "post" do

      assert_select "input[name=?]", "skill[name]"

      assert_select "input[name=?]", "skill[element]"

      assert_select "input[name=?]", "skill[mana_cost]"

      assert_select "input[name=?]", "skill[level_required]"
    end
  end
end

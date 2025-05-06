require 'rails_helper'

RSpec.describe "heros/new", type: :view do
  before(:each) do
    assign(:hero, Hero.new(
      name: "MyString",
      level: 1,
      player_class: "MyString",
      race: "MyString",
      experience_points: 1,
      guild: nil
    ))
  end

  it "renders new hero form" do
    render

    assert_select "form[action=?][method=?]", heros_path, "post" do

      assert_select "input[name=?]", "hero[name]"

      assert_select "input[name=?]", "hero[level]"

      assert_select "input[name=?]", "hero[player_class]"

      assert_select "input[name=?]", "hero[race]"

      assert_select "input[name=?]", "hero[experience_points]"

      assert_select "input[name=?]", "hero[guild_id]"
    end
  end
end

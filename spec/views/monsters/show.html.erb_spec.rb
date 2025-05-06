require 'rails_helper'

RSpec.describe "monsters/show", type: :view do
  before(:each) do
    assign(:monster, Monster.create!(
      name: "Name",
      monster_type: "Monster Type",
      hit_points: 2,
      attack_power: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Monster Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end

require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    assign(:item, Item.create!(
      name: "Name",
      item_type: "Item Type",
      rarity: "Rarity",
      value: 2,
      equipped: false,
      hero: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Item Type/)
    expect(rendered).to match(/Rarity/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end

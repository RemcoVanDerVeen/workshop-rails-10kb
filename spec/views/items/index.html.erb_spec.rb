require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        name: "Name",
        item_type: "Item Type",
        rarity: "Rarity",
        value: 2,
        equipped: false,
        hero: nil
      ),
      Item.create!(
        name: "Name",
        item_type: "Item Type",
        rarity: "Rarity",
        value: 2,
        equipped: false,
        hero: nil
      )
    ])
  end

  it "renders a list of items" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Item Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Rarity".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end

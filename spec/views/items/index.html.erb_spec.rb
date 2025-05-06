# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'items/index', type: :view do
  before do
    assign(:items, [
             Item.create!(
               name: 'Name',
               item_type: 'Item Type',
               rarity: 'Rarity',
               value: 2,
               equipped: false,
               hero: nil
             ),
             Item.create!(
               name: 'Name',
               item_type: 'Item Type',
               rarity: 'Rarity',
               value: 2,
               equipped: false,
               hero: nil
             )
           ])
  end

  it 'renders a list of items' do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new('Name'), count: 2
    assert_select cell_selector, text: Regexp.new('Item Type'), count: 2
    assert_select cell_selector, text: Regexp.new('Rarity'), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end

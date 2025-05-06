# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'items/edit', type: :view do
  let(:item) do
    Item.create!(
      name: 'MyString',
      item_type: 'MyString',
      rarity: 'MyString',
      value: 1,
      equipped: false,
      hero: nil
    )
  end

  before do
    assign(:item, item)
  end

  it 'renders the edit item form' do
    render

    assert_select 'form[action=?][method=?]', item_path(item), 'post' do
      assert_select 'input[name=?]', 'item[name]'

      assert_select 'input[name=?]', 'item[item_type]'

      assert_select 'input[name=?]', 'item[rarity]'

      assert_select 'input[name=?]', 'item[value]'

      assert_select 'input[name=?]', 'item[equipped]'

      assert_select 'input[name=?]', 'item[hero_id]'
    end
  end
end

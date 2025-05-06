# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'items/new', type: :view do
  before do
    assign(:item, Item.new(
                    name: 'MyString',
                    item_type: 'MyString',
                    rarity: 'MyString',
                    value: 1,
                    equipped: false,
                    hero: nil
                  ))
  end

  it 'renders new item form' do
    render

    assert_select 'form[action=?][method=?]', items_path, 'post' do
      assert_select 'input[name=?]', 'item[name]'

      assert_select 'input[name=?]', 'item[item_type]'

      assert_select 'input[name=?]', 'item[rarity]'

      assert_select 'input[name=?]', 'item[value]'

      assert_select 'input[name=?]', 'item[equipped]'

      assert_select 'input[name=?]', 'item[hero_id]'
    end
  end
end

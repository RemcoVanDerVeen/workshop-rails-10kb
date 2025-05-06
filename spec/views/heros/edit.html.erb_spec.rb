# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'heros/edit', type: :view do
  let(:hero) do
    Hero.create!(
      name: 'MyString',
      level: 1,
      player_class: 'MyString',
      race: 'MyString',
      experience_points: 1,
      guild: nil
    )
  end

  before do
    assign(:hero, hero)
  end

  it 'renders the edit hero form' do
    render

    assert_select 'form[action=?][method=?]', hero_path(hero), 'post' do
      assert_select 'input[name=?]', 'hero[name]'

      assert_select 'input[name=?]', 'hero[level]'

      assert_select 'input[name=?]', 'hero[player_class]'

      assert_select 'input[name=?]', 'hero[race]'

      assert_select 'input[name=?]', 'hero[experience_points]'

      assert_select 'input[name=?]', 'hero[guild_id]'
    end
  end
end

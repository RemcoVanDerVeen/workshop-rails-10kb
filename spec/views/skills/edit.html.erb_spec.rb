# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'skills/edit', type: :view do
  let(:skill) do
    Skill.create!(
      name: 'MyString',
      element: 'MyString',
      mana_cost: 1,
      level_required: 1
    )
  end

  before do
    assign(:skill, skill)
  end

  it 'renders the edit skill form' do
    render

    assert_select 'form[action=?][method=?]', skill_path(skill), 'post' do
      assert_select 'input[name=?]', 'skill[name]'

      assert_select 'input[name=?]', 'skill[element]'

      assert_select 'input[name=?]', 'skill[mana_cost]'

      assert_select 'input[name=?]', 'skill[level_required]'
    end
  end
end

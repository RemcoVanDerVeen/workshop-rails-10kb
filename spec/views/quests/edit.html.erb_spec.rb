# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'quests/edit', type: :view do
  let(:quest) do
    Quest.create!(
      title: 'MyString',
      difficulty: 'MyString',
      reward_gold: 1,
      status: 'MyString',
      hero: nil
    )
  end

  before do
    assign(:quest, quest)
  end

  it 'renders the edit quest form' do
    render

    assert_select 'form[action=?][method=?]', quest_path(quest), 'post' do
      assert_select 'input[name=?]', 'quest[title]'

      assert_select 'input[name=?]', 'quest[difficulty]'

      assert_select 'input[name=?]', 'quest[reward_gold]'

      assert_select 'input[name=?]', 'quest[status]'

      assert_select 'input[name=?]', 'quest[hero_id]'
    end
  end
end

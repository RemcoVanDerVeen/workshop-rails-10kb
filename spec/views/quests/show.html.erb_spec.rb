# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'quests/show', type: :view do
  before do
    assign(:quest, Quest.create!(
                     title: 'Title',
                     difficulty: 'Difficulty',
                     reward_gold: 2,
                     status: 'Status',
                     hero: nil
                   ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Difficulty/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(//)
  end
end

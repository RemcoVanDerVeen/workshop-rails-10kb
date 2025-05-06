# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'heros/show', type: :view do
  before do
    assign(:hero, Hero.create!(
                    name: 'Name',
                    level: 2,
                    player_class: 'Player Class',
                    race: 'Race',
                    experience_points: 3,
                    guild: nil
                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Player Class/)
    expect(rendered).to match(/Race/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end

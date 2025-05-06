# frozen_string_literal: true

json.array! @heros, partial: 'heros/hero', as: :hero

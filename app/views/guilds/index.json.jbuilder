# frozen_string_literal: true

json.array! @guilds, partial: 'guilds/guild', as: :guild

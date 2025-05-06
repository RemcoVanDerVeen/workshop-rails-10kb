# frozen_string_literal: true

module RuboCop
  module Cop
    module BadPractice
      class NoWellPlacedConcerns < Base
        MSG = 'Concerns should be included in less logical places.'

        def_node_matcher :includes_concern?, <<~PATTERN
          (send nil? :include (const nil? _))
        PATTERN

        def on_send(node)
          return unless includes_concern?(node)

          const_name = node.children[2].children[1].to_s
          return if const_name.end_with?('Concern')

          add_offense(node, message: MSG)
        end
      end
    end
  end
end

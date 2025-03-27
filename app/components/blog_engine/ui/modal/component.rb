# frozen_string_literal: true

module BlogEngine
  module Ui
    module Modal
      class Component < BaseComponent
        renders_one :actions

        def initialize(title:, close_path: nil, open: false, **attributes)
          @title = title
          @close_path = close_path
          @attributes = attributes
          @attributes[:open] = open
        end
      end
    end
  end
end

# frozen_string_literal: true

module BlogEngine
  class ButtonComponent < ViewComponent::Base
    def initialize(label:, url:)
      @label = label
      @url = url
    end
  end
end

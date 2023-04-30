# frozen_string_literal: true

module Gitwrab
  # Repository to provide service around local repository
  class Repository
    def initialize(dir, _options = {})
      @dir = dir
    end
  end
end

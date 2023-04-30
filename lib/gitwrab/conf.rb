# frozen_string_literal: true

module Gitwrab
  # to configure settings for gitwrab
  # allow to specify :
  # - path for git binary
  class Conf
    attr_accessor :git_path

    def initialize(env: ENV)
      @env = env

      @git_path = @env['GIT_PATH'] || 'git'
    end
  end
end

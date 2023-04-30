# frozen_string_literal: true

require_relative 'gitwrab/version'
require_relative 'gitwrab/conf'
require_relative 'gitwrab/repository'

# namespace for gitwrab library
# service entrypoint for
# - init
# - clone
# - repository
# - config
# - conf (gitwrab)
module Gitwrab
  def self.conf
    @conf ||= Gitwrab::Conf.new
    yield @conf if block_given?
    @conf
  end
end

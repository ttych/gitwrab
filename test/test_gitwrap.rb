# frozen_string_literal: true

require 'test_helper'

# unit test
class TestGitwrab < Minitest::Test
  def setup
    Gitwrab.instance_variable_set(:@conf, nil)
  end

  def test_it_has_a_version_number
    refute_nil ::Gitwrab::VERSION
  end

  def test_it_provides_default_gitwrab_conf
    assert_equal 'git', Gitwrab.conf.git_path
  end

  def test_it_allows_gitwrab_conf_through_block
    Gitwrab.conf do |c|
      c.git_path = '/abc/bin/git'
    end

    assert_equal '/abc/bin/git', Gitwrab.conf.git_path
  end
end

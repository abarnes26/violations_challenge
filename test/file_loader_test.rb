require_relative 'test_helper'

class FileLoaderTest < Minitest::Test

  def test_it_instantiates
    loader = FileLoader.new

    assert_instance_of FileLoader, loader
  end

end

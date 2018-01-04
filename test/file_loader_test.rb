require_relative 'test_helper'

class FileLoaderTest < Minitest::Test

  def test_it_instantiates
    loader = FileLoader.new

    assert_instance_of FileLoader, loader
  end

  def test_it_loads_contents_into_csv
    loader = FileLoader.new
    loader.load_file

    refute_empty loader.file_contents
  end

end

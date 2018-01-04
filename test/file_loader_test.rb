require 'test_helper'

class Printer < Minitest::Test

  def test_it_instantiates
    printer = Printer.new

    assert_instance_of Printer, printer
  end

  def test_it_can_load_files_by_default
    assert_output "You've just loaded Violations-2012.csv\n" do Printer.new.load_command end
  end

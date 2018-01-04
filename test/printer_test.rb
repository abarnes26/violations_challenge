require_relative 'test_helper'

class PrinterTest < Minitest::Test

  def test_it_instantiates
    printer = Printer.new

    assert_instance_of Printer, printer
  end

  def test_it_can_load_csv
    printer = Printer.new

    assert_output "You've just loaded Violations-2012.csv.\n" do printer.load_command end
  end

end

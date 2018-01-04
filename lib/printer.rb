require_relative 'file_loader'

class Printer

  def initialize
    @file_loader = FileLoader.new
  end

  def load_command
      @file_loader.load_file
      puts "You've just loaded Violations-2012.csv."
  end

  def space_formatting
    '%-13s %-13s %-45s %-7s %-25s %10s %-35s %-13s'
  end

  def header_formatting
    ['VIOLATION_ID', 'INSPECTION_ID', 'VIOLATION_CATEGORY','VIOLATION_DATE',
    'VIOLATION_DATE_CLOSED', 'VIOLATION_TYPE']
  end

end

require_relative 'file_loader'

class Printer

  def initalize
    @file_loader = FileLoader.new
  end

  def load_command
      @file_loader.load_file
      puts "You've just loaded Violations-2012.csv."
  end

  def print_queue(queue)
    format = space_formatting
    puts format % header_formatting
    queue.each do |criteria|
      puts format % data_formatting(criteria)
    end
  end

  def data_formatting(criteria)
    [criteria["violation_id"], criteria["inspection_id"],
    criteria["violation_category"], criteria["violation_date"],
    criteria["violation_date_closed"], criteria["violation_type"]]
  end

  def sort_queue(attribute)
    @file_loader.queue.sort_by { |row| row[attribute.to_s]}
  end

  def space_formatting
    '%-13s %-13s %-45s %-7s %-25s %10s %-35s %-13s'
  end

  def header_formatting
    ['VIOLATION_ID', 'INSPECTION_ID', 'VIOLATION_CATEGORY','VIOLATION_DATE',
    'VIOLATION_DATE_CLOSED', 'VIOLATION_TYPE']
  end

end

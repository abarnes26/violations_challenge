class FileLoader
  attr_reader :file_contents

  def initialize
    @file_contents = []
  end

  def load_file(filename = "Violations-2012.csv")
    @file_contents.clear
    loaded_file = CSV.open filename, headers: true
    loaded_file.map do |row|
      @file_contents << row
    end
  end

end

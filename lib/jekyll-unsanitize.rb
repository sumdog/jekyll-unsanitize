require 'jekyll'
require 'jekyll/cleaner'

module Jekyll
  class << self
    def sanitized_path(base_directory, questionable_path)

     if base_directory.eql?(questionable_path)
       base_directory
     elsif questionable_path.start_with?(base_directory)
       questionable_path
     elsif File.exists?(questionable_path) and questionable_path != '/'
       File.expand_path(questionable_path)
     else
       File.join(base_directory, questionable_path)
     end
    
    end
  end

  class Cleaner
    def parent_dirs(file)
      parent_dir = File.dirname(file)
      if parent_dir == '/'
        []
      elsif parent_dir == site.dest
        []
      else
        [parent_dir] + parent_dirs(parent_dir)
      end
    end
  end
end

def tree(path = "*", level=0)
  Dir[path].each do |directory|
    if File.directory?(directory)
      print "├──"
      print "--" * level
      print "#{File.basename(directory)} \n"
      tree("#{directory}/*", level+1)
    else
      print "  " * level
      print "├──"
      print "--" * level
      print "#{File.basename(directory)} \n"
    end
  end
end

ARGV.empty? ? tree : tree(ARGV[0])


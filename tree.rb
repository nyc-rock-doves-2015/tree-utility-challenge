# def tree(dir)
#   content = Dir["#{dir}/*"]
#   content.each do |content_name|
#     if File.file?(content_name)
#       puts content_name
#     elsif File.directory?(content_name)
#       tree(content_name)
#     end
#   end
# end

# tree('.')

# def tree(dir)
#   content = Dir["#{dir}/*"]
#   content.each do |content_name|
#     puts content_name if File.file?(content_name)
#     tree(content_name) if File.directory?(content_name)
#   end
# end

# tree('.')

# def tree
#   puts Dir['**/*']
# end

# tree

def tree(dir)
  content = Dir["#{dir}/*"]
  content.each do |content_name|
    puts "  " + File.basename(content_name) if File.file?(content_name)
    if File.directory?(content_name)
      puts "    " + File.basename(content_name)
      tree(content_name)
    end
  end
end

tree('.')



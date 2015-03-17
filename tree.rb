
def tree(path, counter)
  # path = ARGV.first || "."
  # counter = ARGV[1] || 0
  whitespace = "  " * counter
  Dir[path + "/*"].each do |sub_directory|
    puts "#{whitespace}" + "#{sub_directory}"
    puts tree(sub_directory, counter + 1)
  end
end


# Dir.foreach(check) do |directory|
#   p "this is the directory level"
#   if File.directory?(directory)
#     p directory
#     Dir.foreach("./") do |subdirectory|
#       p subdirectory
#       if File.directory?(subdirectory)
#         tree(subdirectory)
#       end
#       p subdirectory
#     end
#   end
# end
tree(ARGV.first || '.', 0)

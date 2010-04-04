problems = []

Dir[File.dirname(__FILE__) + "/helpers/*.rb"].each {|f| require f}
Dir[File.dirname(__FILE__) + "/solutions/*.rb"].each do |f|
  require f
  problems << Kernel.const_get(File.basename(f, ".rb").split("_").collect{|part| part.capitalize}.join).new
end

problems.each do |problem|
  puts "*" * 80
  puts problem.describe
  puts "answer: #{problem.solve}"
  puts "*" * 80
end

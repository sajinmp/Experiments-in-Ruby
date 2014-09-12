#!usr/bin/ruby

# Blog publisher for my Github page

# Getting the filename
print "Enter the title : "
title = gets.chomp
day_time = Time.now.strftime("%Y-%m-%d %H:%M:%S")
filename = day_time.split[0] + "-" + title.downcase.split.join('-')

# Creating the file
fp = File.new("<location>/#{filename}.md", 'w')

# Entering the contents
fp.puts "---\nlayout: post\ntitle: '#{title}'\ndate: #{day_time}\n---\n"
puts "Enter the content."
$/ = "\n\n\n"
content = gets
fp.puts content
fp.close

# Pushing to github
system("cd <location_of_repo> && git add . && git commit -m '#{title}' && git push origin master")

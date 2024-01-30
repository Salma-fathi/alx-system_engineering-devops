#!/usr/bin/env ruby

# Accept the log file as an argument
log_file = ARGV[0]

# Read the log file line by line
File.open(log_file).each do |line|
  # Extract relevant information using regular expressions
  match_data = line.match(/\[from:([^\]]+)\] \[to:([^\]]+)\] \[flags:([^\]]+)\]/)

  # Extract sender, receiver, and flags
  sender = match_data[1]
  receiver = match_data[2]
  flags = match_data[3]

  # Output the extracted information
  puts "#{sender},#{receiver},#{flags}"
end










#!/usr/bin/env ruby
# Accept the argument passed to the script
# Define the regular expression pattern to match a sequence of 'hb' followed by 0 or more 't' characters and ending with 'n'
# Match the pattern against the argument
# Print the matched string(s)

arg = ARGV[0]
pattern = /hbt{2,5}n/
match = arg.scan(pattern)
puts match.join

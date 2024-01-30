#!/usr/bin/env ruby
# Accept the argument passed to the script
# Define the regular expression pattern
# Match the pattern against the argument
# Print the matched string(s)

arg = ARGV[0]
pattern = /School/
match = arg.scan(pattern)
puts match.join
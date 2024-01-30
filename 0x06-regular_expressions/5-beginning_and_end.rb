#!/usr/bin/env ruby
# Accept the argument passed to the script# Define the regular expression pattern to match a sequence of 'hbt' followed by 1 to 4 't' characters and ending with 'n'
# Match the pattern against the argument
# Print the matched string(s)

arg = ARGV[0]
pattern = /^h.n$/
match = arg.scan(pattern)
puts match.join

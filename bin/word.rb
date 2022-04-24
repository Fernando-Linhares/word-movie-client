#!/usr/bin/ruby

require_relative '../config/bootstrap'

include Config

path_load_files 'bin'

include Words

puts WordMoves.get
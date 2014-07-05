#!/usr/bin/env ruby

task_number = ARGV.shift.to_i

File.open('todo.txt', 'r') do |file|
  File.open('todo.txt.new', 'w') do |new_file|
    counter = 1
    file.readlines.each do |line|
      name, created, completed = line.chomp.split(/,/)
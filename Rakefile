# frozen_string_literal: true

ENV['SINATRA_ENV'] ||= 'development'

require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc 'List of Vloggers'
task :hello do
  puts "Steven Vlog's ! You're home for current Vloggers!"
end

desc 'pry!'
task :console do
  Pry.start
end

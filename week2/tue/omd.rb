require 'typhoeus'
require 'typhoeus'


print "\nWELCOME TO THE MOVIE DATABASE!\n"
print "Movie title: "
title = gets.chomp
print "Movie year: "
year = gets.chomp


response = Typhoeus.get("www.omdbapi.com", :params => {:t => "#{title}", :y => "#{year}" })



puts response.body.keys
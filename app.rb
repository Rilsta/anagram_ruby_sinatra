require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')

get('/') do
  erb(:index)
end

get('/results') do
  @word = params.fetch('word')
  @comparator = params.fetch('comparator').split
  @results = ""
  @comparator.each do |comp|
    if @word.anagram(comp)
      @results += comp + " "
    end
  end
  erb(:results)
end

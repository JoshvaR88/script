
require 'json'

class TweetSearch

	file = JSON.parse(File.read('rubyonrails.json'))
	print "Enter the word to search :"
	word = gets.chomp.to_s
	print "limit :"
	number = gets.chomp.to_i
	tweets = file['results'].select{|f| f['text'].include? (word)}.collect{|s| s['text']}.take(number)
	print tweets

end

#tweets = TweetSearch.new
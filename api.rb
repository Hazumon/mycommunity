# require 'rubygems'
# require 'HTTParty'
#
# response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
#
# puts response.body

require 'rubygems'
require 'httparty'

class Courses
  include HTTParty

  base_uri 'edutecional-resty.herokuapp.com/'

  def posts
    self.class.get('/posts.json')
  end
end

edutectional_rusty = Courses.new
puts edutectional_rusty

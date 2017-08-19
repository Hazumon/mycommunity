class Meetup < ApplicationRecord

  include HTTParty
  base_uri "https://api.meetup.com"

  # This would also work
  # def self.meetups
  #   response = HTTParty.get("https://api.meetup.com/find/groups?key=#{ENV["MEETUP_KEY"]}&zip=02111&radius=5&topic_id=9300&upcoming_events=true&sign=true")
  #   response.each do |meetup|

    def meetups
      response = self.class.get("/find/events?key=#{ENV["MEETUP_KEY"]}&sign=true")
      response.each do |meetup|
        Meetup.create(
        name: meetup["name"],
        link: meetup["link"],
        lat: meetup["group"]["lat"],
        # lon: meetup["group"]["lon"],
        # who: meetup["group"]["who"],
        # time: meetup["time"],
        description: meetup["description"]
        )
        end
      end
  end

#attr_reader :text, :type

  # def initialize
  #   @text = text
  #   # @type = type
  # end
  #
  # def text
  #   get_meetup_data["text"]
  # end

  # def type
  #   get_meetup_data["params"]["type"]
  # end

#   private
#
#   def get_meetup_data
#     @meetup_data ||= MeetupIpsum.new.fetch_data
#   end
# end

require 'haml'
require 'sinatra'
require_relative File.join('config', "shared.rb")

get '/' do
  words = %w[five two cucumber child milk fox tree lion pants waist shoes hair soap banana
              dog clock apple pig company waiter scissors doctor ears cold rabbit stew
              elephant father tail pretty book outside daytime end island rice ball
              kitchen mountain clothes flower horse body front room teacher yes dictionary
              korean student American Japanese French movie actor housewife Mongolian
              cook Australian doctor canadian no singer Thai Vietnamese British what
              office floor number name occupation email address English who]
  words_multiple = ["to squeeze", "to write", "to kick", " to get on (eg. the bus)", "to listen",
                    "Korean language", "office worker", "bank employee", "phone number"]
  combined = words + words_multiple
  haml :index, :locals => { :word => combined.sample }
end

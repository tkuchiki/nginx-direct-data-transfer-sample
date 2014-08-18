require 'sinatra'

# alias
get '/' do
  content_type "image/png"
  response["X-ACCEL-REDIRECT"] = "/img/black.png"
  status 200
end

# root
#get '/' do
#  content_type "image/png"
#  response["X-ACCEL-REDIRECT"] = "/black.png"
#  status 200
#end

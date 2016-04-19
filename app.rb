require 'sinatra'
require 'redis'

get '/' do
  content_type 'text/html'

  redis = Redis.new

  branch_name = request.host.split('.')[0]

  index_key = params[:index_key] || redis.get("#{branch_name}:current")
  redis.get("#{branch_name}:#{index_key}")
end

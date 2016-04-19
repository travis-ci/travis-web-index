require File.expand_path '../spec_helper.rb', __FILE__

describe "Redis front-end" do
  it "should default to the current content for a branch name and no index key" do
    redis = Redis.new
    redis.set 'a-branch-name:current', '1234'
    redis.set 'a-branch-name:1234', 'hello'

    get '/', {}, {'HTTP_HOST' => 'a-branch-name.example.com'}
    expect(last_response.body).to eq('hello')
  end
end

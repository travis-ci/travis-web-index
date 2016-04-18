require File.expand_path '../spec_helper.rb', __FILE__

describe "Redis front-end" do
  it "should respond" do
    get '/'
    expect(last_response).to be_ok
  end
end

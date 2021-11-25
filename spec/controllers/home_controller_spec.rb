require 'rails_helper'
RSpec.describe HomeController do 
   it "should say 'Hello World' when we call the say_hello method" do 
      hw = HomeController.new 
      message = hw.say_hello 
      expect(message).to eq "Hello World!"
   end
end
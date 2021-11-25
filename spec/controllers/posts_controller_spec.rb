require 'rails_helper'
#require 'controllers/posts_controller'
RSpec.describe PostsController do 
 
      
      it "should say 'Hello World' when we call the say_hello method" do 
         hw = PostsController.new 
         message = hw.say_hello 
         expect(message).to eq "Hello World!"
      end
      

end
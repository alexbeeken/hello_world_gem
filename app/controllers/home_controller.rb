module HelloWorld
  class HomeController < ApplicationController
    def index
      @message = "Hello World!"
    end
  end
end
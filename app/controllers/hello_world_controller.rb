class HelloWorldController < ApplicationController
  def hello
    render :text => params[:id]
  end
end

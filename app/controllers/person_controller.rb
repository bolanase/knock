class PersonController < ApplicationController
  def hi
    @name = session[:name]
  end

  def introduce
    session[:name] = params[:name]
    
    redirect_to root_url
  end

  def bye
    name = session[:name]
    flash[:notice] = "See ya later, #{name}"
    session[:name] = nil
    render 'hello'
  end
end

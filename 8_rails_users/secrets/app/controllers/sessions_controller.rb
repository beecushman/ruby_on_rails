class SessionsController < ApplicationController
  def new
  end

  def destroy
    session.destroy
    redirect_to '/sessions/new'
  end
end

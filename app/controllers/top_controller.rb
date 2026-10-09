class TopController < ApplicationController
  def main
    if session[:login_uid] 
      render top_main_path
    else
      render top_login_path
    end
  end

  def login
    if params[:uid] == "kindai" and params[:pass] == "sanriko"
      session[:login_uid] = params[:uid]
      redirect_to top_main_path
    else
      render "error"
    end
  end
end

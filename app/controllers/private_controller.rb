class PrivateController < ApplicationController
  
before_action :authenticate_user!

  def index
  end

  def signed_in
  end
end

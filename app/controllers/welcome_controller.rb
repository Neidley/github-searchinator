class WelcomeController < ApplicationController
  before_action :ensure_logged_in, :only => [:index]

  def index
  end

  def about
  end
end

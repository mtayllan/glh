class ApplicationController < ActionController::Base
  before_action :authenticathe_user!
end

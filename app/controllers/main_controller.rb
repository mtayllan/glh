class MainController < ApplicationController
  before_action :authenticathe_user!
end

class DashboardsController < ApplicationController



  def show
    @bookclubs = Bookclub.all
  end

end

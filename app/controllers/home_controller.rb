class HomeController < ApplicationController
  def index
  	@users_clubs = current_user.clubs.order(:updated_at).reverse

  end
end

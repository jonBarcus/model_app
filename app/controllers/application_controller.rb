class ApplicationController < ActionController::Base

	protect_from_forgery with: :exception
	before_action :authenticate_user!


# TODO remove foreman before deploying to heroku?
end

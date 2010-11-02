# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  
  before_filter :get_pages, :set_locale
	def set_locale
	  # if params[:locale] is nil then I18n.default_locale will be used
	  I18n.locale = params[:locale]
	end
  
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

	layout'main'
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

	def get_pages
		@pages = Page.find_main
	end

	def default_url_options(options={})
		logger.debug "default_url_options is passed options: #{options.inspect}\n"
		{ :locale => I18n.locale }
	end
end

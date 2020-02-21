class HomeController < ApplicationController
  def index
  end
  # Detect localization preferences
  def detect_locale
    logger.debug "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"
    I18n.locale = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    logger.debug "* Locale set to '#{I18n.locale}'"
    redirect_to root_path(locale: I18n.locale)
  end
end

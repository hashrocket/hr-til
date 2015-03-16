class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  authem_for :developer

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end
end

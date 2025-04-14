# frozen_string_literal: true

class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  include Authentication
  include Authorization
  include Language
  include Pagy::Backend
  include Error
end

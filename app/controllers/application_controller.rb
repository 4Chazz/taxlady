class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  self.per_form_csrf_tokens = true
end

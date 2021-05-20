class ApplicationController < ActionController::Base
	before_action :authenticate_user!

def after_sign_in_path_for(resource)
  books_path # your path
end

def after_sign_out_path_for(resource_or_scope)
  home_index_path
end
end

class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        projects_path
    end

    def after_sign_out_path_for(resource)
        pages_home_path
    end
end

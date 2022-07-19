class ProjectsController < ApplicationController
    def add_index
        @projects = Project.all
    end
end
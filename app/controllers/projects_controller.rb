class ProjectsController < ApplicationController

    def create
       @user = User.find(params[:user_id])
       @project = Project.new(user: @user, name: params[:name], content: params[:content])

       if @project.save
        render json: @project 

       else 
        render json: @project.errors
       end 

    end


    def update
        @project = Project.find(params[:id])
        @project.update(project_params)

        if @project.save
            render json: @user.projects 

        else 
            render json: @project.errors
        end 
    end

    private

    def project_params 
        params.permit(:user_id, :name, :content)
    end
end

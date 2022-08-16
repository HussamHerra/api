class PostsController < ApplicationController
    before_action :authorize_request , except: :create
    before_action :authorize_admin_request , except: :index

    def index
        render json: JobPost.all, status: :ok
    end

    def create
        @JobPost = JobPost.new(jobPost_params)
        if @JobPost.save
          render json: @JobPost, status: :created
        else
          render json: { errors: @JobPost.errors.full_messages },
                 status: :unprocessable_entity
        end
    end

    def jobPost_params
        params.permit(
          :JobDescription
        )
    end
end

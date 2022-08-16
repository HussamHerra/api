class JobsController < ApplicationController
    before_action :authorize_request , except: :create
    before_action :authorize_admin_request , except: :index

    def index
        render json: JobApplication.all, status: :ok
    end

    def create
        @JobApplication = JobApplication.new(jobApplication_params)
        @JobApplication.users_id = @current_user.id
        if @JobApplication.save
          render json: @JobApplication, status: :created
        else
          render json: { errors: @JobApplication.errors.full_messages },
                 status: :bad_request
        end
    end

    def jobApplication_params
        params.permit(
          :job_posts_id
        )
    end
end

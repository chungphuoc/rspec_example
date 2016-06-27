class JobsController < ApplicationController
  def new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      respond_to do |format|
        format.html { redirect_to jobs_path, notice: 'Job was successfully created.' }
        format.json { render json: @job, status: :created }
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @job.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

  private
    def job_params
      params.require(:job).permit(:name, :company_id)
    end
end

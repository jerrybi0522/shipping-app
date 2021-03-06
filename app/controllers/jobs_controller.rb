class JobsController < ApplicationController
  def index
    
  end

  def new
  end

  def create
    @job = Job.new(job_params)
    @job.save
    redirect_to boat_path(@job.boat)
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    redirect_to boat_path(@boat)
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to boat_path(@boat)
  end

  def show
    @job = Job.find(params[:id])
  end

  private

  def job_params
    params.require(:job).permit(:boat_id, :user_id, :name, :containers, :cargo, :origin, :cost, :destination)
  end
end

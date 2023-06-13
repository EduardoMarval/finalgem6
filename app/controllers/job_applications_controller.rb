class JobApplicationsController < ApplicationController
    before_action :authenticate_user!

    def index
        @job_applications = JobApplication.all
    end
  


    def create
      @job_offer = JobOffer.find(params[:job_offer_id])
      @job_application = JobApplication.new(job_application_params)
      @job_application.user = current_user
      @job_application.job_offer = @job_offer
  
      if @job_application.save
        JobApplicationMailer.application_notification(@job_application).deliver_now
        redirect_to @job_offer, notice: 'Job application submitted successfully.'
      else
        render 'job_offers/show'
      end
    end

    def show
        @job_offer = JobOffer.find(params[:id])
        @job_applications = @job_offer.job_applications
      end
  
    private
  
    def job_application_params
      params.require(:job_application).permit(:cover_letter, :resume)
    end
  end
  
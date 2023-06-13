class PagesController < ApplicationController
  def home
    @job_offer = JobOffer.all
    @job_applications = JobApplication.all 
  end
end

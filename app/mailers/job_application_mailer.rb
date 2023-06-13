class JobApplicationMailer < ApplicationMailer

    def application_notification(job_application)

      @job_application = job_application

      mail(to: 'emarvalr@gmail.com', subject: 'New Job Application')

    end

  end
  
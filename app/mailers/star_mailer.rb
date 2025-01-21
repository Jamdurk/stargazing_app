class StarMailer < ApplicationMailer
    default from: 'aguy230001@gmail.com'

    def new_star_notification(star)
        @star = star
        mail(to: 'aguy230001@gmail.com', subject: 'New Star Submission')
    end
end

################################################################################
# $Id: report_mailer.rb 2236 2010-12-13 21:27:33Z ccaroon $
################################################################################

# FIXME: these should be in user config
REPORT_TO = [%w(wkreiling@mcclatchyinteractive.com)]
REPORT_CC = [%w(developers@mcclatchyinteractive.com)]

#REPORT_TO = [%w(ktowle@mcclatchyinteractive.com)]
#REPORT_CC = [%w(karl.towle@gmail.com)]

class ReportMailer < ActionMailer::Base

    def weekly(report)
        @report = report
        mail(:from => User.user.email,
             :to => REPORT_TO,
             :cc => REPORT_CC,
             :content_type => "text/html",
             :subject => "[WR] #{(report.end_date-1).strftime("%Y.%m.%d")}"
        )
    end

end

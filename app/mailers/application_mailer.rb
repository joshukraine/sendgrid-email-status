class ApplicationMailer < ActionMailer::Base
  default from: "josh@euroteamoutreach.org"
  default body: "not used"
  layout "mailer"
end

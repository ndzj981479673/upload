# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Test2::Application.initialize!
#config.action_mailer.delivery_method = :smtp | :sendmail | :test
Depot::Application.configure do
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
:address=> "smtp.gmail.com",
:port=> 587,
:domain=> "domain.of.sender.net",
:authentication => "plain",
:user_name=> "ndzj981479673",
:password=> "199007200908",
:enable_starttls_auto => true
}
end

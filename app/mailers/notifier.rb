class Notifier < ActionMailer::Base
  include UsersHelper
  include ActionView::Helpers::AssetTagHelper  
  layout 'email' # use email.(html|text).erb as the layout for emails
  default from: "Petpass Team petpassteam@gmail.com"

  def welcome(user, pet)
    @user = user
    @pet = pet

    mail to: @user.email, subject: "Welcome to Petpass"
  end

  def need_information(user, pet)
    @user = user
    @pet = pet

    mail to: @user.email, subject: "Petpass needs more infor for #{@pet.name}'s license for #{@user.city}"
  end

  def confirmation_of_submission(user, pet)
    @user = user
    @pet = pet

    mail to: @user.email, subject: "CONFIRMATION - Petpass has recieved #{@pet.name}'s license application for #{@user.city}"
  end

  def confirmation_of_license(user, pet)

  end

end

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

  def confirmation_of_submission(user, pet, city_fee, park_fee)
    @user = user
    @pet = pet
    @city_fee = city_fee
    @park_fee = park_fee
    mail to: @user.email, subject: "CONFIRMATION - Petpass has recieved #{@pet.name}'s license application for #{@user.city}"
  end

  def need_information(pet)
    @pet = pet
    @user = pet.user

    mail to: @user.email, subject: "Update #{@pet.name}'s information on Petpass"
  end

  def no_license_reminder(pet)
    @pet = pet
    @user = pet.user

    mail to: @user.email, subject: "License #{@pet.name} through Petpass"
  end

  def email_team(pet)
    @pet = pet
    @user = pet.user
    mail to: "correlllashbrook@gmail.com, ajbraus@gmail.com, nikolaiskievaski@gmail.com", subject: "BING! New Pet - #{@pet.name} - Licensed Through Petpass"
  end
end

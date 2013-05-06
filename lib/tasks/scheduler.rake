#each of these calls from rake e.g. heroku run rake update_feed
# desc "This task is called by the Heroku scheduler add-on"
# task :update_feed => :environment do
#     puts "Updating feed..."
#     NewsFeed.update
#     puts "done."
# end

task :need_information => :environment do
  Pet.need_information
end

task :no_license_reminder => :environment do
  Pet.no_license_reminder
end
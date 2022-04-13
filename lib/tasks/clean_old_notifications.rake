namespace :notifications do
desc "Delete notifications olfder than one week "
task :clean => :environment do

    @not = Notification.where('created_at < ?', 7.days.ago)
    @not.destroy_all
    puts 'Done!'

end
end
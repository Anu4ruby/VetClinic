namespace :app_tasks do
  desc "Add owner"
    task :add_owner => :environment do
      owner_email = ['anu4ruby@gmail.com'] 
      user = User.find_by_email(owner_email)
      if user
        user.role = "owner"
        user.save
      end
    end
  
  desc "Add receptionist"
    task :add_receptionist => :environment do
      receptionist_email = ['anu4ruby@gmail.com'] 
      user = User.find_by_email(receptionist_email)
      if user
        user.role = "receptionist"
        user.save
      end
    end
  
desc "Add Vet doctors"
  task :add_vet_doctors => :environment do
    vet_doctors_email = ['owner@gmail.com', 
              'bob@gmail.com', 
              'susan@gmail.com']
    vet_doctors_email.each do |email|
      user = User.find_by_email(email)
      if user
        user.role = "doctor"
        user.save
      end
    end
  end

end
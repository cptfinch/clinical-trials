namespace :demo do
  desc "First loop"
  task(:first_loop=>:environment) do
    for supervisor in Supervisor.find(:all)
      puts supervisor.name
      puts supervisor.members.size
    end
  end
end
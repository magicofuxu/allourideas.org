#send hoptoad deploy notification
run "cd #{release_path} && rake hoptoad:deploy TO=#{node[:environment][:framework_env]} USER=#{node[:owner_name]} REVISION=#{`cat #{release_path}/REVISION`}"
# restart delayed job workers
run "sudo monit restart all -g All_Our_Ideas_jobs"

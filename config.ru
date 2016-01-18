require 'showoff'

pres = ShowOff.new
password = ENV['PASSWORD']

if password
  pres.settings.showoff_config.merge!(
    'protected' => ['presenter'],
    'password' => password
  )
end

pres.settings.set :nocache, true
run pres

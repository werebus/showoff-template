require 'showoff'
require 'showoff/version'

pres = ShowOff.new
password = ENV['PASSWORD']

if password
  pres.settings.showoff_config.merge!(
    'protected' => ['presenter'],
    'password' => password
  )
end

pres.settings.set :url, nil
pres.settings.set :nocache, false
run pres

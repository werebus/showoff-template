require 'showoff'
require 'showoff/version'

pres = Showoff.new

if (password = ENV['PASSWORD'])
  pres.settings.showoff_config.merge!(
    'protected' => ['presenter'],
    'password' => password
  )
end

run pres

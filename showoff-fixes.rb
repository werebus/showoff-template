module ShowoffFixes
  def self.included(app)
    app_routes = app.routes
    app.instance_variable_set(:@routes, {})

    app.get %r{/(image|file)/(?<path>.*)} do
      full_path = File.join(settings.pres_dir, params[:path])
      if File.exist?(full_path)
          send_file full_path
      else raise Sinatra::NotFound
      end
    end

    existing = app.instance_variable_get(:@routes)

    app_routes.each do |verb, routes|
      # This is the "bad" regex. See puppetlabs/showoff#928
      routes.delete_if { |route| route.first.to_s == '(?:image|file)\\/(.*)' }
      (existing[verb] ||= []).concat(routes)
    end
  end
end

Showoff.include(ShowoffFixes)

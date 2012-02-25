desc 'Task for CI server'
task :cruise do
  dir = File.dirname(__FILE__) + '/../..'
  system 'gem bundle'
  system "cp #{ dir }/config/database.sample.yml #{ dir }/config/database.yml"
  spec = "#{ dir }/vendor/bundler_bin/spec -c -f specdoc"
  exec "#{ spec } #{ dir }/spec/models && #{ spec } #{ dir }/spec/integration"
end

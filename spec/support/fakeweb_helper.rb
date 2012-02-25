def get_response file
  path = File.join RAILS_ROOT, 'spec', 'support', 'web_responses', file
  File.read File.expand_path(path)
end

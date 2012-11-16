namespace :config do
  desc 'Copy database settings to config directory'
  task :database_settings do
   FileUtils.cp "#{Rails.root.to_s}/config/database.yml.#{ENV['DB'] || 'postgres'}", "#{Rails.root.to_s}/config/database.yml"
  end
end
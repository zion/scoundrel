$PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
Dir["#{$PROJECT_ROOT}/lib/sites/*.rb"].each { |file| require file }

require 'bundler/setup'
require 'stir/all'
require 'pry'
require 'rspec/expectations'
require 'json'
require 'faker'
# require 'mysql2'
require 'factory_bot'
require 'active_record'
# require 'mail'
require 'taza'
require 'test-helpers/all'
require 'watir'
# require_relative 'parsers/email_parser.rb'
# require_relative 'test_info.rb'

(ENV['TAZA_ENV'] ||= 'isolation').downcase
(ENV['BROWSER'] ||= 'firefox').downcase
(ENV['DRIVER'] ||= 'watir').downcase

# Stir.configure do |config|
#   config.path = File.join($PROJECT_ROOT, 'services')
#   config.environment = ENV['TAZA_ENV']
#   config.version = ENV['VERSION'] ||= 'v_1_0'
# end

# config_file = File.expand_path('services/config') + "/database.yml"
# config = YAML.load_file(config_file).with_indifferent_access

# config[ENV['VERSION']][ENV['TAZA_ENV']].each do |db|
#   ActiveRecord::Base.configurations[db.first] = db.second
# end

# Dir["#{$PROJECT_ROOT}/services/models/**/*.rb"].each { |file| require file }

# FactoryBot.definition_file_paths = [File.join("#{$PROJECT_ROOT}/services/factories")]
# FactoryBot.find_definitions
# include FactoryBot::Syntax::Methods

# HTTParty::Basement.default_options.update(verify: false)

# TestHelpers::Wait.default_configuration do |config|
#   config.wait_timeout = 20 #timeout after 30 seconds
#   config.interval = 1 #timeout after 30 seconds
# end

# Faker::Config.locale = 'en-US'

#OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
# World(TestHelpers::Wait)
# World(TestInfo)

if ENV['CODECLIMATE_REPO_TOKEN']
  require "codeclimate-test-reporter"
  CodeClimate::TestReporter.start
end

require 'sqlite3'
require 'friendly'

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

UnfriendlyUser = Class.new ActiveRecord::Base

class FriendlyUser < ActiveRecord::Base
  friendly
end


RSpec.configure do |config|
  config.order = 'random'
end

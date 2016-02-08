require File.expand_path('../boot', __FILE__)
require 'csv'
require 'rails/all'

if defined?(Bundler)
  Bundler.require *Rails.groups(:assets => %w(development test))
end

module GuardRspecProblem
  class Application < Rails::Application
    config.assets.enabled = true
    config.assets.version = '1.0'
    config.time_zone = ENV['TIMEZONE'] || 'Australia/Sydney'
    config.active_record.default_timezone = :local
    I18n.config.enforce_available_locales = true
    config.i18n.default_locale = :en
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_record.whitelist_attributes = true
  end
end

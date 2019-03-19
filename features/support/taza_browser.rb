module Taza
  class Browser
    def self.create_watir(params)
      require 'watir'
      browser = nil
      if ENV['BROWSER'] == 'firefox'
        profile = Selenium::WebDriver::Firefox::Profile.new
        browser = Watir::Browser.new :firefox, :profile => profile
      else
        browser = Watir::Browser.new params[:browser]
      end
      browser
    end
  end
end
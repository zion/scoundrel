require 'rubygems'
require 'taza/page'

module Google
  class HomePage < ::Taza::Page
    element(:search_txt) { browser.text_field(css: 'input[title=\'Search\']') }
    element(:feeling_lucky_btn) { browser.button(id: 'gbqfbb') }
    element(:search_btn) { browser.element(css: 'input[name=\'btnK\']') }
    element(:search_results) { browser.elements(css: 'div.srg .g') }
  end
end

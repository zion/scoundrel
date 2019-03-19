require 'active_support'

class Scoundrel < Thor
  include Thor::Actions
  desc "feature NAME", "use to generate new feature file"
  method_option :app, :aliases => "-a", :desc => "Specify an app for the new feature"
  def feature(name)
    Thor::Sandbox::Scoundrel.source_root(File.dirname(__FILE__))
    path = name.split("::").map { |x| ActiveSupport::Inflector.underscore(x) }.join("/")
    
    template('lib/templates/feature.feature.tt', "features/#{path}.feature")
    template('lib/templates/step_definition.rb.tt', "features/step_definitions/#{path}_steps.rb")
    say "Done!", :green
  end
end
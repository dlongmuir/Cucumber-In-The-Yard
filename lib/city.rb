require 'cucumber/parser/gherkin_builder'
require 'gherkin/parser/parser'
require 'gherkin/formatter/tag_count_formatter'

module CucumberInTheYARD
  VERSION = '1.7.2' unless defined?(CucumberInTheYARD::VERSION)
end

require File.dirname(__FILE__) + "/yard/code_objects/cucumber/base.rb"
require File.dirname(__FILE__) + "/yard/code_objects/cucumber/namespace_object.rb"
require File.dirname(__FILE__) + "/yard/code_objects/cucumber/feature.rb"
require File.dirname(__FILE__) + "/yard/code_objects/cucumber/scenario_outline.rb"
require File.dirname(__FILE__) + "/yard/code_objects/cucumber/scenario.rb"
require File.dirname(__FILE__) + "/yard/code_objects/cucumber/step.rb"
require File.dirname(__FILE__) + "/yard/code_objects/cucumber/tag.rb"

require File.dirname(__FILE__) + "/cucumber/city_builder.rb"

require File.dirname(__FILE__) + "/yard/code_objects/step_transformer.rb"
require File.dirname(__FILE__) + "/yard/code_objects/step_definition.rb"
require File.dirname(__FILE__) + "/yard/code_objects/step_transform.rb"
require File.dirname(__FILE__) + "/yard/code_objects/namespace_object.rb"

require File.dirname(__FILE__) + "/yard/parser/cucumber/feature.rb"

require File.dirname(__FILE__) + "/yard/handlers/cucumber/base.rb"
require File.dirname(__FILE__) + "/yard/handlers/cucumber/feature_handler.rb"

require File.dirname(__FILE__) + "/yard/handlers/step_definition_handler.rb"
require File.dirname(__FILE__) + "/yard/handlers/step_transform_handler.rb"

require File.dirname(__FILE__) + "/yard/parser/source_parser.rb"
require File.dirname(__FILE__) + "/yard/templates/helpers/base_helper.rb"

require File.dirname(__FILE__) + "/yard/server/commands/list_command.rb"
require File.dirname(__FILE__) + "/yard/server/router.rb"

require File.dirname(__FILE__) + "/yard/rake/city_task.rb"


#
# For `yard server` utilize the templates and the static files at these locations
# before using the defaults 
#
YARD::Templates::Engine.register_template_path File.dirname(__FILE__) + '/templates'
YARD::Templates::Engine.register_template_path File.dirname(__FILE__) + '/docserver'

YARD::Server.register_static_path File.dirname(__FILE__) + "/templates/default/fulldoc/html"
YARD::Server.register_static_path File.dirname(__FILE__) + "/docserver/default/fulldoc/html"

require "administrate/field/text"
require "rails"
require "administrate/engine"
require "wysiwyg-rails"

module Administrate
  module Field
    class Froala < Administrate::Field::Text
      VERSION = "0.1.2"

      class Engine < ::Rails::Engine
        Administrate::Engine.add_javascript "administrate-field-froala/application"
        Administrate::Engine.add_stylesheet "administrate-field-froala/application"
      end
    end
  end
end

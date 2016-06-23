require "administrate/field/text"
require "rails"
require "administrate/engine"

module Administrate
  module Field
    class Froala < Administrate::Field::Text
      VERSION = "0.1.0"

      class Engine < ::Rails::Engine
        Administrate::Engine.add_javascript "administrate-field-froala/application"
        Administrate::Engine.add_stylesheet "administrate-field-froala/application"
      end
    end
  end
end

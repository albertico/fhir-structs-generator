# frozen_string_literal: true

require_relative "commands/core"

module FHIR::Structs::Generator
  module CLI::Commands
    extend Dry::CLI::Registry

    # See the 'commands/*.rb' directory for the defined CLI commands.
    
    register "core", FHIR::Structs::Generator::CLI::Commands::Core
  end
end

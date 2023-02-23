# frozen_string_literal: true

module FHIR::Structs::Generator
  module CLI::Commands
    class Core < Dry::CLI::Command
      desc "Generate structs for the FHIR core specification"

      option :namespace, type: :string, required: true, desc "Ruby module namespace"
      option :"defs-dir", type: :string, required: true, desc "FHIR core definitions directory"
      option :"gem-dir", type: :string, required: true, desc "Root directory of the fhir-struct-* gem"

      def call(**options)
        puts "--namespace=#{options.fetch(:namespace)} --defs-dir=#{options.fetch(:defs_dir)} --gem-dir=#{options.fetch(:gem_dir)}"
      end
    end
  end
end

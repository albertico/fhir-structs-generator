# frozen_string_literal: true

module FHIR::Structs::Generator
  module CLI
    module Commands
      class Core < Dry::CLI::Command
        desc "Generate structs for the FHIR core specification"

        option :namespace, type: :string, desc: "Ruby module namespace"
        option :defs_dir, type: :string, desc: "FHIR core definitions directory"
        option :gem_dir, type: :string, desc: "Root directory of the fhir-struct-* gem"

        def call(**options)
          puts "--namespace=#{options.fetch(:namespace)} --defs_dir=#{options.fetch(:defs_dir)} --gem_dir=#{options.fetch(:gem_dir)}"
        end
      end
    end
  end
end

#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require "pathname"

repo_root = Pathname(__dir__).join("..", "..", "..").realpath
schema_path = repo_root.join("skill_hub", "contracts", "route.schema.json")

schema = JSON.parse(File.read(schema_path))
puts "route.schema.json OK"

route_path = ARGV[0]
exit 0 if route_path.nil? || route_path.empty?

route = JSON.parse(File.read(route_path))
missing = schema.fetch("required").reject { |key| route.key?(key) }
unknown = route.keys - schema.fetch("properties").keys

unless missing.empty?
  warn "Missing required keys: #{missing.join(', ')}"
  exit 1
end

unless unknown.empty?
  warn "Unknown keys: #{unknown.join(', ')}"
  exit 1
end

puts "#{route_path} OK"

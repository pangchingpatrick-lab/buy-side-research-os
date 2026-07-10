#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require "pathname"

ROOT = Pathname(__dir__).parent
CONFIG_PATH = ROOT.join("data_layer", "data_layer_config.json")

def read_json(path)
  JSON.parse(File.read(path))
end

def count_jsonl(path)
  return 0 unless path.exist?

  File.readlines(path, chomp: true).reject(&:empty?).length
end

config = read_json(CONFIG_PATH)
runtime_root = Pathname(config.fetch("runtime_data_root"))
readable_root = Pathname(config.fetch("human_readable_root"))
machine_root = Pathname(config.fetch("machine_index_root"))
global_index = Pathname(config.fetch("global_index_path"))
documents_root = Pathname(config.fetch("documents_root"))
category_index_root = Pathname(config.fetch("category_index_root"))

checks = {
  runtime_root: runtime_root.directory?,
  readable_root: readable_root.directory?,
  machine_index_root: machine_root.directory?,
  global_index_path: global_index.file?,
  documents_root: documents_root.directory?,
  category_index_root: category_index_root.directory?
}

puts "# Runtime Data Layer Inspection"
puts
puts "config: #{CONFIG_PATH}"
puts "runtime_data_root: #{runtime_root}"
puts
puts "## Checks"
checks.each do |name, ok|
  puts "- #{name}: #{ok ? 'OK' : 'MISSING'}"
end

puts
puts "## Counts"
puts "- global_index_records: #{count_jsonl(global_index)}"
puts "- canonical_documents: #{documents_root.directory? ? documents_root.glob('*.json').length : 0}"
puts "- readable_pdfs: #{readable_root.directory? ? readable_root.glob('*/*.pdf').length : 0}"
puts "- readable_json_files: #{readable_root.directory? ? readable_root.glob('*/*.json').length : 0}"
puts "- category_indexes: #{category_index_root.directory? ? category_index_root.glob('*.jsonl').length : 0}"

if global_index.file?
  first_record = File.readlines(global_index, chomp: true).find { |line| !line.empty? }
  if first_record
    record = JSON.parse(first_record)
    puts
    puts "## Sample Record"
    puts "- summary_title: #{record['summary_title']}"
    puts "- categories: #{Array(record['categories']).join(', ')}"
    puts "- primary_pdf_exists: #{File.exist?(record['primary_pdf_path'].to_s)}"
    puts "- json_exists: #{File.exist?(record['json_path'].to_s)}"
  end
end

exit(checks.values.all? ? 0 : 1)

#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require "pathname"

ROOT = Pathname(__dir__).parent
CONFIG_PATH = ROOT.join("data_layer", "data_layer_config.json")

def usage!
  warn "Usage: ruby scripts/build_data_context.rb [category|all] [limit]"
  warn "Example: ruby scripts/build_data_context.rb semiconductor 10"
  exit 1
end

def jsonl_records(path)
  return [] unless path.exist?

  File.readlines(path, chomp: true).reject(&:empty?).map { |line| JSON.parse(line) }
end

def full_document(record)
  path = record["json_path"].to_s
  return record unless File.exist?(path)

  JSON.parse(File.read(path))
rescue JSON::ParserError
  record
end

def preferred_pdf_path(record, doc, category)
  return record["readable_pdf_path"] if category != "all" && record["readable_pdf_path"].to_s != ""

  readable_paths = record["readable_pdf_paths"] || doc["readable_pdf_paths"] || {}
  return readable_paths[category] if category != "all" && readable_paths[category].to_s != ""

  record["primary_pdf_path"] || doc["primary_pdf_path"] || readable_paths.values.first
end

category = (ARGV[0] || "all").to_s
limit = (ARGV[1] || "12").to_i
usage! if limit <= 0

config = JSON.parse(File.read(CONFIG_PATH))
machine_root = Pathname(config.fetch("machine_index_root"))
index_path = if category == "all"
               Pathname(config.fetch("global_index_path"))
             else
               machine_root.join("category_index", "#{category}.jsonl")
             end

records = jsonl_records(index_path).first(limit)

puts "# Research Data Context"
puts
puts "- category: #{category}"
puts "- source_index: #{index_path}"
puts "- records: #{records.length}"
puts

records.each_with_index do |record, index|
  doc = full_document(record)
  puts "## #{index + 1}. #{record['summary_title']}"
  puts
  puts "- id: #{record['id']}"
  puts "- source: #{record['source_type']} / #{record['handle'] || record['author']}"
  puts "- created_at: #{record['created_at']}"
  puts "- categories: #{Array(record['categories'] || doc['detail_categories']).join(', ')}"
  puts "- tags: #{Array(record['display_tags']).first(16).join(', ')}"
  puts "- tickers: #{Array(record['detected_tickers']).join(', ')}"
  puts "- topics: #{Array(record['detected_topics']).join(', ')}"
  puts "- score: #{record['final_score']}"
  puts "- url: #{record['url']}"
  puts "- pdf: #{preferred_pdf_path(record, doc, category)}"
  puts "- json: #{record['json_path']}"
  puts
  text = doc["text"].to_s.gsub(/\s+/, " ").strip
  preview = text.length > 700 ? "#{text[0, 700]}..." : text
  puts preview.empty? ? "_No text preview available._" : preview
  puts
end

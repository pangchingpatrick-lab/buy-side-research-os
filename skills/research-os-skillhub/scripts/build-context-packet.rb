#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"

repo_root = Pathname(__dir__).join("..", "..", "..").realpath
target = repo_root.join("scripts", "build_data_context.rb")

abort "Missing #{target}" unless target.file?

args = ARGV.empty? ? ["all", "12"] : ARGV

Dir.chdir(repo_root) { exec("ruby", target.to_s, *args) }

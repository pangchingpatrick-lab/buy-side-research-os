#!/usr/bin/env ruby
# frozen_string_literal: true

require "pathname"

repo_root = Pathname(__dir__).join("..", "..", "..").realpath
target = repo_root.join("scripts", "inspect_data_layer.rb")

abort "Missing #{target}" unless target.file?

Dir.chdir(repo_root) { load target.to_s }

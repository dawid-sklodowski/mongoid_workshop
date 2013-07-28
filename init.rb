$LOAD_PATH.unshift(File.expand_path("../lib", __FILE__))
require 'rubygems'
require 'bundler'
Bundler.require :default
Mongoid.load!("config/mongoid.yml")
require 'delayed_job'
require 'user'
require 'property'

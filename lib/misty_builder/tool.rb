#!/usr/bin/env ruby
require 'misty_builder'
require 'misty_builder/parser'
require 'pp'
require 'pry-byebug'

include MistyBuilder::Parser

def init(params)
  @command = nil
  @local_base = 'fetched/'
  @source = "../misty/lib/misty/openstack"

  file, url = nil, nil
  constant = nil
  excluded_components = []
  selected_components = []

  # Commands
  case params[0]
  when "fetch"
    @command = :fetch
    params.shift
  when "diff"
    @command = :diff
    params.shift
  else
    usage & exit
  end

  # Options
  until params.empty?
    case params[0]
    when '-t', '--target='
      @local_base = params[1]
      params.shift(2)
    when '-m', '--module='
      selected_components << params[1]
      params.shift(2)
    when '-d', '--debug'
      $DEBUG = true
      params.shift
    when '-h', '--help'
      usage & exit
    when '-x', '--exclude'
      excluded_components << params[1]
      params.shift(2)
    end
  end

  services = MistyBuilder::SERVICES.select { |service| !excluded_components.include?(service.name) }
  @services = unless selected_components.empty?
    services.select { |service| selected_components.include?(service.name) }
  else
    services.dup
  end
end

def usage
  puts "#{__FILE__}\n  Usage: fetch | diff  [ -m <module name> ] [ -t <target file> ]"
end

def fetch(service)
  return if service.url.empty?
  constant = (service.name[0].upcase + service.name[1..-1]).to_sym
  puts "#{constant}/#{service.version}"
  html_source = fetch_source(service.url)
  api = self.send(service.parser, html_source)
  target = @local_base + service_path(service) + ".rb"
  Dir.mkdir(@local_base + "#{service.name}") unless Dir.exist?(@local_base + "#{service.name}")
  generate(api, target, constant, service.version)
end

def diff(service)
  file = "#{service_path(service)}.rb"
  res = %x{diff #{@local_base}/#{file} #{@source}/#{file}}
  if $?.exitstatus && !res.empty?
    puts "----------------- #{service.name} / #{service.version} -----------------"
    puts res
    puts "---------------------------------------------------------------------------"
    puts
  end
end

private

def service_path(service)
  "#{service.name}/#{service.name}_#{service.version}"
end

init(ARGV)
@services.each do |service|
  self.send(@command, service)
end

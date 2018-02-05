source ENV['GEM_SOURCE'] || "https://rubygems.org"

group :test do
  gem 'puppetlabs_spec_helper', '~> 2.2.0',                         :require => false
  gem 'rspec-puppet', '~> 2.5',                                     :require => false
end

if facterversion = ENV['FACTER_GEM_VERSION']
  gem 'facter', facterversion.to_s, :require => false, :groups => [:test]
else
  gem 'facter', :require => false, :groups => [:test]
end

ENV['PUPPET_VERSION'].nil? ? puppetversion = '~> 4.0' : puppetversion = ENV['PUPPET_VERSION'].to_s
gem 'puppet', puppetversion, :require => false, :groups => [:test]

# vim: syntax=ruby

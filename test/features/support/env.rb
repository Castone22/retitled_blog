$LOAD_PATH << File.dirname(__FILE__)+'/../page-objects'
require 'rubygems'
require 'page-object'
require 'active_record'

HOST_AND_PORT = 'http://localhost:8080'

def home_url
    "#{HOST_AND_PORT}/retitled_blog"
end
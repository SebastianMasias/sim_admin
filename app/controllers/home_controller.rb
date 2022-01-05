class HomeController < ApplicationController
  require 'rest-client'
  require 'nokogiri'
  require 'open-uri'
  require 'rexml/document'
  require 'active_support/all'
  require 'xmlhasher'
  require 'mailgun-ruby'

        XmlHasher.configure do |config|
          config.snakecase = true
          config.ignore_namespaces = true
          config.string_keys = false
        end

        parser = XmlHasher::Parser.new(
        :snakecase => true,
        :ignore_namespaces => true,
        :string_keys => false
      )
        def index
        end
        
        def visit
        end


        def dashboard


                            
          @clients = Client.all
          @simcards = Simcard.all

                    
                                          
        end





end



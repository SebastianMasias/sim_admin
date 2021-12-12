class HomeController < ApplicationController
  require 'rest-client'
  require 'nokogiri'
  require 'open-uri'
  require 'rexml/document'
  require 'active_support/all'
  require 'xmlhasher'

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


 def dashboard


                    
                    @clients = Client.all
                    @simcards = Simcard.all
                    
          
                
                
                             
                
                
                
                
 end























end






#         response = RestClient::Request.execute( { :method => :get, :url => 'https://xml2.travelsim.com/tsim_xml/service/xmlgate', :headers => {:params => {:uname => '2f6Jlwd7kg', :upass => 'AGVNHpns8b', :plain => '1', :command => 'gbalance', :onumn => '37281623929' }} })

    #RestClient.get 'https://xml2.travelsim.com/tsim_xml/service/xmlgate?uname=2f6Jlwd7kg&upass=AGVNHpns8b&plain=1&command=gbalance&onum=37281623929', {accept: :xml}
    #RestClient.get 'https://xml2.travelsim.com/tsim_xml/service/xmlgate?uname=2f6Jlwd7kg&upass=AGVNHpns8b&plain=1&command=gbalance&onum=37281623929'
     # response = RestClient.get 'https://xml2.travelsim.com/tsim_xml/service/xmlgate?uname=2f6Jlwd7kg&upass=AGVNHpns8b&plain=1&command=gbalance&onum=37281623929'
     # @response = response.body
     #   https://xml2.travelsim.com/tsim_xml/service/xmlgate?uname=2f6Jlwd7kg&upass=AGVNHpns8b&plain=1&command=gbalance&onum=37281623929


    
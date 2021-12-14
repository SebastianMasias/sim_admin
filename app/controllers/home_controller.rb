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


 def dashboard


                    
                    @clients = Client.all
                    @simcards = Simcard.all
                                   
 end

 
 def send_simple_message

mg_client = Mailgun::Client.new '9292406c0f64ca832fccbc1b4d316269-8ed21946-6c636d12'


message_params =  { from: 'sevlin@https://api.mailgun.net/v3/sandbox389ecdfabc264a4e9061b0b20bf441b2.mailgun.org',
                    to:   'samasias@gmail.com',
                    subject: 'The Ruby SDK is awesome!',
                    text:    'It is really easy to send a message!'
                  }


@mail = mg_client.send_message 'https://api.mailgun.net/v3/sandbox389ecdfabc264a4e9061b0b20bf441b2.mailgun.org', message_params


end





 #<% @c = Simcard.find(simcard.id).number%>
 #<%result = RestClient::Request.execute( { :method => :get, :url => 'https://xml2.travelsim.com/tsim_xml/service/xmlgate', :headers => {:params => {:uname => '2f6Jlwd7kg', :upass => 'AGVNHpns8b', :plain => '1', :command => 'discount', :onum => (@c) }} })%>
 #<%consumo = XmlHasher.parse(result).dig :discount, :gprs, :data_left      %>     
 

 #<td><%= @consumption = consumo%></td>
 
  
 #<%  @p = Simcard.find(simcard.id).number%>
 #<% response = RestClient::Request.execute( { :method => :get, :url => 'https://xml2.travelsim.com/tsim_xml/service/xmlgate', :headers => {:params => {:uname => '2f6Jlwd7kg', :upass => 'AGVNHpns8b', :plain => '1', :command => 'gbalance', :onum => (@p) }} })%>
 #<% balance = XmlHasher.parse(response).dig :records, :card, :onum%>

 #<td><%=@factura = balance%></td>

















end






#         response = RestClient::Request.execute( { :method => :get, :url => 'https://xml2.travelsim.com/tsim_xml/service/xmlgate', :headers => {:params => {:uname => '2f6Jlwd7kg', :upass => 'AGVNHpns8b', :plain => '1', :command => 'gbalance', :onumn => '37281623929' }} })

    #RestClient.get 'https://xml2.travelsim.com/tsim_xml/service/xmlgate?uname=2f6Jlwd7kg&upass=AGVNHpns8b&plain=1&command=gbalance&onum=37281623929', {accept: :xml}
    #RestClient.get 'https://xml2.travelsim.com/tsim_xml/service/xmlgate?uname=2f6Jlwd7kg&upass=AGVNHpns8b&plain=1&command=gbalance&onum=37281623929'
     # response = RestClient.get 'https://xml2.travelsim.com/tsim_xml/service/xmlgate?uname=2f6Jlwd7kg&upass=AGVNHpns8b&plain=1&command=gbalance&onum=37281623929'
     # @response = response.body
     #   https://xml2.travelsim.com/tsim_xml/service/xmlgate?uname=2f6Jlwd7kg&upass=AGVNHpns8b&plain=1&command=gbalance&onum=37281623929


    
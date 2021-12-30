class Simcard < ApplicationRecord
    belongs_to :client


  #  
  #          @simcard = Simcard.all 
  #          @card = Simcard.all
  #          
  #          @simcard.each do |simcard|
#
  #          @c = Simcard.find(simcard.id).number
  #          result = RestClient::Request.execute( { :method => :get, :url => 'https://xml2.travelsim.com/tsim_xml/service/xmlgate', :headers => {:params => {:uname => '2f6Jlwd7kg', :upass => 'AGVNHpns8b', :plain => '1', :command => 'discount', :onum => (@c) }} })
  #          consumo = XmlHasher.parse(result).dig :discount, :gprs, :data_left  
  #          
  #          @consumo_final= Simcard.find(simcard.id)
  #          @consumo_final.update(consumption: consumo)
  #          
  #          end
#
  #          @card.each do |sd|
#
  #          @p = Simcard.find(sd.id).number
  #          response = RestClient::Request.execute( { :method => :get, :url => 'https://xml2.travelsim.com/tsim_xml/service/xmlgate', :headers => {:params => {:uname => '2f6Jlwd7kg', :upass => 'AGVNHpns8b', :plain => '1', :command => 'gbalance', :onum => (@p) }} })
  #          balance = XmlHasher.parse(response).dig :records, :card, :balance
#
  #          @balance_final= Simcard.find(sd.id)
  #          @balance_final.update(balance: balance)
#
  #          end
  # 


  
end


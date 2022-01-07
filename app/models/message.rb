require 'mailgun-ruby'

class Message 
    include ActiveModel::Model
    attr_accessor :name, :email, :phone_number, :body
    validates :name, :email, :phone_number, :body, presence: true
  



    def send
      mg_client = Mailgun::Client.new ENV['key-edf5b14936f9c1b9fa875b4046a98a3f']
      info = {
        from: email,
        to:   'sevlin2107@gmail.com',
        subject: "Email from #{name} - EasyCard.com",
        text:    "From: #{name}\nEmail: #{email}\nPhone: #{phone_number}\n\n #{body}"
  
                    }
      mg_client.send_message 'https://api.mailgun.net/v3/sandbox389ecdfabc264a4e9061b0b20bf441b2.mailgun.org', info
    end







end

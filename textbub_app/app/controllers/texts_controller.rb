
class TextsController < ApplicationController
  def index
  end

  def send_text_message
    require 'rubygems'
    require 'twilio-ruby'
    # number_to_send_to = params[19177497002]

    twilio_sid = "AC632e446554816323222f39a346788cb4"
    twilio_token = "b80f3d7b7373af6bc29ccf3063d7e3e4"
    # twilio_phone_number = "6464553611"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create({
      :from => "+16464553611",
      :to => "+19177497002",
      :body => "Hi my friend"
    })
  end
end

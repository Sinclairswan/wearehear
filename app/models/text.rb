class Text < ApplicationRecord

  def clean_number
    number = self.number.scan(/\d+/).join
    number[0] == "1" ? number[0] = '' : number
    number unless number.length != 10
  end

  def send_sms(number, sender)


    link = 'www.google.com'
    image_url = 'https://media.giphy.com/media/SRO0ZwmImic0/giphy.gif'
    # image_url = 'https://s3.amazonaws.com/wearehear/giphy.gif'

    @client = Twilio::REST::Client.new twilio_account_sid, twilio_auth_token

  @client.messages.create({
    from: from,
    to: '+1'+number,
    body: sender + " sent you a bouquet from HearWeAre! Click " + link + " to view it!",
    media_url: image_url})
  end


end

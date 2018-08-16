class MailjetService
  # attr_accessor :page, :scrapper
  def initialize

  end

  def perform
    require 'dotenv'
    Dotenv.load

    Mailjet.configure do |config|
      config.api_key = ENV["AWS_ACCESS_KEY_ID"]
      config.secret_key = ENV["AWS_SECRET_ACCESS_KEY_ID"]
      config.default_from = ENV["AWS_ACCESS_ACCESS_EMAIL"]
    end

    Scrapper.all.each do |user|
      email = { :from_email   => ENV["AWS_ACCESS_ACCESS_EMAIL"],
        :from_name    => "The Hacking Project | Charles",
        :subject      => "Hello #{user.name}",
        :text_part    => "A la recherche d'une formation pour les étudiants entrepreneurs ? Voilà comment apprendre le développement web en trois mois : https://thpforpresident.herokuapp.com/landing1",
        :recipients   => [{:email => user.email }]}

        test = Mailjet::Send.create(email)

        # retrieve the API response
        p test.attributes['Sent']

      end
    end
  end
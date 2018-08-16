class StaticController < ApplicationController
    def index
    end

    def landing1
    end

    def subscribe1
        Subscriber.create(email: params[:static][:email])
        flash[:success] = "Merci pour votre inscription !"
        redirect_to "/landing1"
    end

    def landing2
    end

    def subscribe2
        Subscriber.create(email: params[:static][:email])
        flash[:success] = "Merci pour votre inscription !"
        redirect_to "/landing2"
    end

    def landing3
    end

    def subscribe3
        Subscriber.create(email: params[:static][:email])
        flash[:success] = "Merci pour votre inscription !"
        redirect_to "/landing3"
    end

    def newsletter
        require 'dotenv'
        Dotenv.load
    
        Mailjet.configure do |config|
          config.api_key = ENV["AWS_ACCESS_KEY_ID"]
          config.secret_key = ENV["AWS_SECRET_ACCESS_KEY_ID"]
          config.default_from = ENV["AWS_ACCESS_ACCESS_EMAIL"]
        end
    
        Subscriber.all.each do |user|
            email = { :from_email   => ENV["AWS_ACCESS_ACCESS_EMAIL"],
                :from_name    => "The Hacking Project | Charles",
                :subject      => "Hello",
                :text_part    => "Ceci est la newsletter THP top-lol",
                :recipients   => [{:email => user.email}]}
    
            test = Mailjet::Send.create(email)
    
            p test.attributes['Sent']
        end
        redirect_to "/done"
    end
end
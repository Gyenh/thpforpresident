require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Scrapping
   attr_accessor :page, :scrapper

  def initialize
      @page = Nokogiri::HTML(open('https://pepite.u-bretagneloire.fr/annuaire-des-referents'))
      @crypto = Scrapper.new

  end


  def perform
      hash = create_hash
      hash.each do  |key, value|
   if !(Scrapper.find_by(email: value))
     Scrapper.create(name: key, email: value)
   else
    puts "already exist"
       end
     end
     p "done"
  end

  def get_the_mail
    user_email = []
    @page.css('a[class = mail]').each do |m|
      user_email << m.text
    end
    user_email
  end

# methode qui permet de recuperer le nom de chaque money et les met dans un array
  def get_the_name
    user_name = []
    @page.css("strong").each do |n|
      user_name << n.text
    end
    user_name.delete('Rennes')
    user_name.delete('Nantes')

    user_name
  end

# methode qui va zipper dans un hash le nom des crypto et leur valeur du jour
  def create_hash
    hash = Hash[get_the_name.zip(get_the_mail)]
    hash.each do |name, mail|
    end
  end
end

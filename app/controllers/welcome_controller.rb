class WelcomeController < ApplicationController
  def show
      puts "$" * 60
      puts "Voici le message de l'URL :"
      puts  params[:first_name]
      puts "$" * 60
  end

  def méthode
    @user = User.find(params[:first_name])
  end
end

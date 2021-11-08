class UsersController < ApplicationController
  def index
    @users = User.all
  end


  def show
    @user = User.find(params[:id])
  end
end

def create
  @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], city: params[:city]) # avec xxx qui sont les données obtenues à partir du formulaire
if @user.save # essaie de sauvegarder en base @user
  # si ça marche, il redirige vers la page d'index du site
  redirect_to users_path
else
  # sinon, il render la view new (qui est celle sur laquelle on est déjà)
  render new_users_path
end
end
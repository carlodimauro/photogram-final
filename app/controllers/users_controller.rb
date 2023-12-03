class UsersController < ApplicationController
  def index
    matching_users = User.all

    @list_of_users = matching_users.order({ :created_at => :desc })

    render({ :template => "users/index" })
  end


  def show
    the_username = params.fetch("username")
    @the_user = User.where({ :username => the_username }).first
    render({ :template => "users/show" })
  end

def liked_photos
  the_username = params.fetch("username")
  @the_user = User.where({ :username => the_username }).first
  render({ :template => "users/liked_photos" })
end

def feed
  the_username = params.fetch("username")
  @the_user = User.where({ :username => the_username }).first
  render({ :template => "users/feed" })
end

def discover
  the_username = params.fetch("username")
  @the_user = User.where({ :username => the_username }).first
  render({ :template => "users/discover" })
end


end

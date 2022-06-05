class HomeController < ApplicationController
  load_and_authorize_resource

  def index
    @users_count = User.count
    @notes_count = Note.count
  end
end

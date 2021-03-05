class EmailsController < ApplicationController
  def index
    @email = Email.all
  end

  def create
    @new_email = Email.create(object: Faker::TvShows::Buffy.character, body: Faker::TvShows::Buffy.quote)
  end

  def show
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end


  private

  def email_params
    params.permit(:object, :body)
  end
end

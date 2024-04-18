class JokesController < ApplicationController
  def index
    @jokes = Joke.all
  end

  def in_like
    current_like = Joke.find(params[:id])
    current_like.like +=1
    current_like.save
  end

  def in_dislike
    current_like = Joke.find(params[:id])
    current_like.dislike +=1
    current_like.save
  end

  private

  def set_joke
    @joke = Joke.find(params[:id])
  end

  def joke_params
    params.require(:joke).permit(:content, :like, :dislike)
  end
end
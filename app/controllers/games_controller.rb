class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    # si le mot ne contient pas toutes les lettres => Sorry but MOT can't be built out of ....
    # checker si le mot existe en anglais => Sorry but MOT does not seem to be an Enlgish word
    # Si mot rempli les 2 conditions => Congratulations! MOT is a valid English word!

    @word = params[:word].split(' ') # string
    @letters = params[:letters] # string de lettres avec des espaces

  end

end

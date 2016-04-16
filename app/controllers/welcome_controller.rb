class WelcomeController < ApplicationController
  def index
    #@entries = ["Cats are lovely", "Wolfs are better"] #zmienna przypisana do obiektu (ma @ - czyli nie jest lokalna i nie zniknie gdzy metoda sie skonczy, widok bedzie mogl zniej korzystac), bedzie istniala tak dlugo jak bedzie istnial obiekt
    #@entries = Entry.all #po utworzeniu kontrolera wpisujemy go tu
  end

end

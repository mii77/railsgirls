class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end
  def new
  end
  def create
    #render(:text => params.inspect) #sprawdzanie wyswietlania na stronie
    entry_data = params["entry"].permit("title", "contents") #tworzenie wpisow do bazy
    #entry = Entry.create(entry_data)# entry to to co sie zapisalo w bazie danych
    entry = Entry.new(entry_data)
    entry.date = Date.today
    entry.save
    #redirect_to(entries_path)#przekierowanie uzytkownika DRY - dont repeate yourself
    redirect_to(entry_path(entry))#pozostan na stronie wpisu
  end
  def edit
    @entry = Entry.find(params["id"])
  end
  def update
    entry_data = params["entry"].permit("title", "contents")
    entry = Entry.find(params["id"])
    entry.update(entry_data)
    #redirect_to(entries_path)
    redirect_to(entry_path(entry))
  end
  def show
    @entry = Entry.find(params["id"])#pobieranie z bazy danych
  end
end

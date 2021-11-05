class Api::V1::GoogleBooksController < ApplicationController

  BASE_URL =  "https://www.googleapis.com/books/v1/volumes/"

  def got
    # goal is to send the request to the api, and return the response with only the data we want
    
    # ! without user input
    # Create the full url
    
    # 1. send the req   =>  fetch(fullUrl)
    # 2. convert the req=>  .then(turn response to json)
    # 3. .then(do something with the data)
    
    full_url = BASE_URL + "?q=game+of+thrones"
    # p "*" * 99
    # p full_url
    # p "*" * 99

    # create the URI
    uri = URI(full_url)
    # then send the req
    res = Net::HTTP.get(uri)
    # make better
    better_reponse = JSON.parse(res)

    render json: better_reponse
  end

  def search_books

    full_url = BASE_URL + "?q=" + params[:search_term] 

    # # create the URI
    # uri = URI(full_url)
    # # then send the req
    # res = Net::HTTP.get(uri)
    # # make better
    # better_reponse = JSON.parse(res)

    better_reponse = HTTParty.get(full_url)

    byebug

    render json: better_reponse
    
  end

end

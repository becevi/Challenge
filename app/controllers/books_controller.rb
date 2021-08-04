class BooksController < ApplicationController

    def index
        @books = Book.all
    end

    def new
        @book = Book.new
    end

    
    def create 
        @book = Book.new(book_params) 
        if @book.save 
            redirect_to(admins_authenticated_root_path) and return
        else               
            render '/books/new' 
        end 
    end 
    
    private 
    def book_params 
      params.require(:book).permit(:title, :first_name, :last_name, :description, :price, :stock) 
    end 

end

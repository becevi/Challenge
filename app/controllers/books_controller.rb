class BooksController < ApplicationController

    #index action to check if some substring of the title is present and if no query
    # done then just show all books
    def index
        if params[:query].present?
          @books = Book.where("title ILIKE ?", "%#{params[:query]}%")
        else
          @books = Book.all
        end
    end

    # this allows the get request for the book form
    def new
        @book = Book.new
    end

    # creates a new instance of book and if saved goes back to admin dashboard
    # else it asks goes back to the form
    def create 
        @book = Book.new(book_params) 
        if @book.save 
            redirect_to(admins_authenticated_root_path) and return
        else               
            render '/books/new' 
        end 
    end 
    
    # params to retrieve safely the book params
    private 
    def book_params 
      params.require(:book).permit(:title, :first_name, :last_name, :description, :price, :stock) 
    end 

end

class PostsController < ApplicationController
    def index
      @posts = Post.all
    end

    def create
      @post = Post.new(name: params[:name], 
                      depature_date:params[:depature_date], 
                      return_date:params[:return_date])
      if @post.save
      redirect_to posts_path
      else
        render("posts/new")
      end
    end
    
    def new 
        @post =  Post.new
        if @post.save
            
          else
            
          
        end
    end

    def edit 
        
        
    end

    def show 
      @post = Post.find_by(id: params[:id])
    end

    def update 
    end
end

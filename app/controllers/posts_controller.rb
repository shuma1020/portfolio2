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
      @post = Post.find_by(id: params[:id])
    end

    def show 
      @post = Post.find_by(id: params[:id])
    end

    def update 
        @post = Post.find_by(id: params[:id])
        @post.name =params[:name]
        @post.depature_date = params[:depature_date]
        @post.depature_time = params[:depature_time]
        @post.memo = params[:memo]
        if @post.save
          redirect_to("posts/#{@post.id}/book")
        else
          redirect_to edit_post_path
        end
    end
    def book
      @post = Post.find_by(id: params[:id])
    end
    
end

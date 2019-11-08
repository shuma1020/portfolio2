class PostsController < ApplicationController
    def index
    end

    def create
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
    end

    def update 
    end
end

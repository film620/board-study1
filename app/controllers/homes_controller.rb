class HomesController < ApplicationController
    
    def index
        @create=Post.all
    end
    
    def create
        post=Post.new
        post.title=params[:title]
        post.content=params[:content]
        post.name=params[:name]
        post.password=params[:password]
        post.save
        redirect_to "/homes/index"
    end
    
    def show
        @show=Post.find(params[:id])
        
    end    
    
    def title_d
        title_d=Post.where(title: params[:title])
        title_d.each do|x|
            x.destroy
        end
        
        redirect_to "/homes/index"
        
    end   
    
    def delete
        delete=Post.find(params[:id])
        delete.destroy
        redirect_to "/homes/index"
    end
        
    def edit
        @edit=Post.find(params[:id])
        
    end
    
    def update
        update=Post.find(params[:id])
        if update.name == params[:name]
        update.title=params[:title]
        update.content=params[:content]
        update.name=params[:name]
        update.password=params[:password]
        update.save
        end
        redirect_to "/homes/index"
    end
    
    
    
end

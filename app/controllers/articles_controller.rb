class ArticlesController < ApplicationController

    def index
    end

    def create
    end

    def show
    end

    def destroy
    end

    def update
    end

    def article_params
        params.permit(:title, :content, :author, :category, :published_at)
      end

end

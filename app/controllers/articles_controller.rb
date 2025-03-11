class ArticlesController < ApplicationController
    def index
      articles = Article.order(published_at: :desc)
      render json: articles.as_json(except: [:created_at, :updated_at])
    end
    def create
      article = Article.new(article_params)
      if article.save
        render json: article.as_json(except: [:created_at, :updated_at]), status: :created
      else
        render json: article.errors, status: :unprocessable_entity
      end
    end
  
    def show
      article = Article.find_by(id: params[:id])
      if article
        render json: article.as_json(except: [:created_at, :updated_at])
      else
        render json: { error: 'Article not found' }, status: :not_found
      end
    end
  
    def destroy
      head :method_not_allowed
    end
  
    def update
      head :method_not_allowed
    end
  
    def patch
      head :method_not_allowed
    end
  
    private
    def article_params
      params.permit(:title, :content, :author, :category, :published_at)
    end
  end
  
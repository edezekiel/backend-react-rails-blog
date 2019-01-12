class Api::V1::ArticlesController < ApplicationController
    before_action :set_article, only: [:show,:update,:destroy]

    def index
      articles = Article.all
      render json: articles, status: 200
    end

    def create
      article = Article.create(article_params)
      render json: article, status: 201
    end

    def show
      render json: @article, status: 200
    end

    def update
      @article.update(article_params)
    end

    def destroy
      articleId = @article.id
      @article.destroy
      render json: {message:"Zap! Article deleted", articleId:articleId}
    end

    private

    def article_params
      params.permit(:id, :title, :text)
    end

    def set_article 
      @article = Article.find(params[:id])
    end
  end

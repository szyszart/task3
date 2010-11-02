class ArticlesController < ApplicationController
        def index
                @articles = Article.all
        end

        def show
		@article = Article.find(params[:id])
		@group_name = @article.get_group_name
        end
end


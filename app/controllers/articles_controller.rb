class ArticlesController < ApplicationController
        def index
                @articles = Article.all
        end

        def show
		@article = Article.find(params[:id])
 		group = Group.find(@article.group_id)
                if group.nil?
                        @group_name = "unassigned"
                else
                        @group_name = group.name
                end
        end
end


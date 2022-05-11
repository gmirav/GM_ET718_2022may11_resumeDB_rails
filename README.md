# GM_ET718_2022may11_resumeDB_rails

rails new blog
rails new resumeDB



rails generate controller Welcome index
rails generate controller Welcome index



root 'welcome#index'
root 'welcome#index'



rails generate model Article title:string text:text
rails generate scaffold Resume name image_url role location email phone



<h1>Hello, Rails!</h1>
<%= link_to 'My Blog', controller: 'articles' %>
<h1>HR Resume Database</h1>
<%= link_to 'Resume Database', controller: 'resumes' %>



Skipped Steps 11 & 12 for the formatting/site design for now.



rails generate model Comment commenter:string body:text article:references
rails generate model Skill title level resume:references



resources :articles do
  resources :comments
end
resources :resumes do
  resources :skills
end



rails generate controller Comments
rails generate controller Skills



class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
class SkillsController < ApplicationController
  def create
    @resume = Resume.find(params[:resume_id])
    @skill = @resume.skills.create(skill_params)
    redirect_to resume_path(@resume)
  end
 
  private
    def skill_params
      params.require(:skill).permit(:title, :level)
    end
end
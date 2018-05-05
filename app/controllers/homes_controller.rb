class HomesController < ApplicationController
  def index
    
  end
  
  def roadmap
    @all_school = Home.where(school_name: params[:school_name])
    @school = params[:school_name]
    @f_major = params[:f_major]
    @s_major = params[:s_major]
    if params[:school_name] == "not_selected" or params[:f_major] == "not_selected" or params[:s_major] == "not_selected"
      flash[:success] = "Error!"
      redirect_to '/'
    end
    
  end

  def form
  end

  def create
    board_create = Home.new
    board_create.school_name = params[:school_name]
    board_create.f_major = params[:f_major]
    board_create.s_major = params[:s_major]
    board_create.title = params[:my_title]
    board_create.content = params[:my_content]
    board_create.current_user_id = current_user.email
    board_create.save
    
    redirect_to "/homes/roadmap/#{params[:school_name]}"
  end

  def show
    @find_post = Home.find(params[:post_id])
    @find_post_id = @find_post.current_user_id 
    @created_at = @find_post.created_at
    
    
    @find_post.view_count = @find_post.view_count + 1
    @find_post.save
    
  end
  
  def edit
    @edit_post = Home.find(params[:post_id])
  end
  
  def update
    update_post = Home.find(params[:post_id])
    update_post.title = params[:my_title]
    update_post.content = params[:my_content]
    update_post.save
    
    redirect_to "/homes/roadmap/#{Home.find(params[:post_id]).school_name}"
  end
  
  def delete
    @delete_post = Home.find(params[:post_id])
    @delete_school = @delete_post.school_name
    @delete_post.destroy
    
    redirect_to "/homes/roadmap/#{@delete_school}"
  end
  
  def school
   
  end

  
end

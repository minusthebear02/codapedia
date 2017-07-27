class CollaboratorsController < ApplicationController

  before_action :set_wiki

  def index
    @users = User.all
  end

  def create
    @collaborator = @wiki.collaborators.create(user_id: params[:user_id])

    if @collaborator.save
      flash[:notice] = "Collaborator was added."

    else
      flash.now[:alert] = "There was an error adding the collaborator. Please try again."

    end
    redirect_to wiki_collaborators_path(@wiki)
  end

  def destroy
    @user = @wiki.users.find(params[:id])
    @collaborator = @wiki.collaborators.find_by(user_id: @user.id)

    if @collaborator.destroy
      flash[:notice] = "\"#{@collaborator}\" was removed successfully."
    else
      flash.now[:alert] = "There was an error removing the collaborator."
    end
    redirect_to wiki_collaborators_path(@wiki)
  end

  private
  def collab_params
    params.require(:collaborator).permit(:wiki_id, :user_id)
  end

  def set_wiki
    @wiki = Wiki.find(params[:wiki_id])
  end

end

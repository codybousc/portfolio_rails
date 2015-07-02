class ProjectsController < ApplicationController
  def new
    @coding_skill = CodingSkill.find(params[:coding_skill_id])
    @project = @coding_skill.projects.new
  end

  def create
    @coding_skill = CodingSkill.find(params[:coding_skill_id])
    @project = @coding_skill.projects.new(project_params)
    if @project.save
      redirect_to coding_skill_path(@project.coding_skill)
    else
      render :new
    end
  end

  def edit
    @coding_skill = CodingSkill.find(params[:coding_skill_id])
    @project = @coding_skill.projects.find(params[:id])
  end

  def update
    @coding_skill = CodingSkill.find(params[:coding_skill_id])
    @project = @coding_skill.projects.find(params[:id])
    if @project.update(project_params)
      flash[:notice] = "Project added, broski"
      redirect_to coding_skill_path(@coding_skill.id)
    else
      render :edit
    end
  end

  def destroy
    @coding_skill = CodingSkill.find(params[:coding_skill_id])
    @project = @coding_skill.projects.find(params[:id])
    @project.destroy
    redirect_to coding_skill_path(@coding_skill)
  end
    

  private
    def project_params
      params.require(:project).permit(:name, :description)
    end



end

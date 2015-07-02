class CodingSkillsController < ApplicationController
  def index
    @coding_skills = CodingSkill.all
    render :index
  end

  def show
    @coding_skill = CodingSkill.find(params[:id])
    render :show
  end

  def new
    @coding_skill = CodingSkill.new
  end

  def create
    @coding_skill = CodingSkill.new(coding_skill_params)
    if @coding_skill.save
      redirect_to coding_skills_path
    else
      render :new
    end
  end

  def edit
    @coding_skill = CodingSkill.find(params[:id])
    render :edit
  end

  def update
    @coding_skill = CodingSkill.find(params[:id])
    if @coding_skill.update(coding_skill_params)
      redirect_to coding_skills_path
    else
      render :edit
    end
  end

  def destroy
    @coding_skill = CodingSkill.find(params[:id])
    @coding_skill.destroy
    redirect_to coding_skills_path
  end





  private
  def coding_skill_params
    params.require(:coding_skill).permit(:name, :description)
  end
end

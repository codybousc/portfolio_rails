class CodingSkillsController < ApplicationController
  def index
    @coding_skills = CodingSkill.all
    render :index
  end
end

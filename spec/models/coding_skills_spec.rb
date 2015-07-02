require 'rails_helper'

describe CodingSkill do
  it { should validate_presence_of :name }
  it { should have_many :projects}
end

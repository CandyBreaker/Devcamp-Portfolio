class PagesController < ApplicationController
  def Home
    @posts = Blog.all
    @skills = Skill.all
  end

  def About
    @skills = Skill.all
  end

  def Contact
  end
end

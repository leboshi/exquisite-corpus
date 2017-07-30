module CurrentStory
  private
  def set_story
    @story = Story.find(session[:story_id])
  rescue ActiveRecord::RecordNotFound
    @story = Story.create
    session[:story_id] = @story.id
  end
end
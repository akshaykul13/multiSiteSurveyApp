class ResponseGroupsController < ApplicationController
  def new
    @questions = Question.where(survey_id: params[:survey_id])
  end

  def create
    @response_group = ResponseGroup.create!(:survey_id => params[:survey_id])
    params[:response].each do |key, value|
      @response = Response.create!(:response_group => @response_group.id, :question_id => key, :answer_text => value)      
    end
    redirect_to survey_questions_path(params[:survey_id])
  end
end
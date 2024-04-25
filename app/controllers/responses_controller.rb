class ResponsesController < ApplicationController
  def create
    @survey = Survey.find(params[:survey_id])
    @response = @survey.responses.new(response_params)

    if @response.save
      redirect_to @survey, notice: 'Your response has been recorded.'
    else
      render 'surveys/show', status: :unprocessable_entity
    end
  end

  private

  def response_params
    params.require(:response).permit(:answer)
  end
end

class SurveysController < ApplicationController
  def index
    @surveys = Survey.with_response_data.order(created_at: :desc)
  end

  def new
    @survey = Survey.new
  end

  def show
    @survey = Survey.find_by(id: params[:id])
    if @survey
      @response = @survey.responses.new
      @yes_count = @survey.responses.where(answer: true).count
      @no_count = @survey.responses.where(answer: false).count
    else
      redirect_to surveys_path, alert: 'Survey not found.'
    end
  end

  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      redirect_to surveys_path, notice: 'Survey was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def survey_params
    params.require(:survey).permit(:question)
  end
end

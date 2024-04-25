class SurveysController < ApplicationController
  def index
    @surveys = Survey.includes(:responses).all
  end

  def new
    @survey = Survey.new
  end

  def show
    @survey = Survey.find(params[:id])
    @response = @survey.responses.new
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

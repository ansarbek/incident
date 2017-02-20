class RiskAssessementsController < ApplicationController
  before_action :set_risk_assessement, only: [:show, :edit, :update, :destroy]

  # GET /risk_assessements
  # GET /risk_assessements.json
  def index
    @risk_assessements = RiskAssessement.all
  end

  # GET /risk_assessements/1
  # GET /risk_assessements/1.json
  def show
  end

  # GET /risk_assessements/new
  def new
    @risk_assessement = RiskAssessement.new
  end

  # GET /risk_assessements/1/edit
  def edit
  end

  # POST /risk_assessements
  # POST /risk_assessements.json
  def create
    @risk_assessement = RiskAssessement.new(risk_assessement_params)

    respond_to do |format|
      if @risk_assessement.save
        format.html { redirect_to @risk_assessement, notice: 'Risk assessement was successfully created.' }
        format.json { render :show, status: :created, location: @risk_assessement }
      else
        format.html { render :new }
        format.json { render json: @risk_assessement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /risk_assessements/1
  # PATCH/PUT /risk_assessements/1.json
  def update
    respond_to do |format|
      if @risk_assessement.update(risk_assessement_params)
        format.html { redirect_to @risk_assessement, notice: 'Risk assessement was successfully updated.' }
        format.json { render :show, status: :ok, location: @risk_assessement }
      else
        format.html { render :edit }
        format.json { render json: @risk_assessement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /risk_assessements/1
  # DELETE /risk_assessements/1.json
  def destroy
    @risk_assessement.destroy
    respond_to do |format|
      format.html { redirect_to risk_assessements_url, notice: 'Risk assessement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_risk_assessement
      @risk_assessement = RiskAssessement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def risk_assessement_params
      params.require(:risk_assessement).permit(:probability_risk, :consequense_risk, :risk_level, :task_id, :safety_report_id)
    end
end

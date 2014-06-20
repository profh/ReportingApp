class VisitActionsController < ApplicationController
  before_action :set_visit_action, only: [:show, :edit, :update, :destroy]

  # GET /visit_actions
  # GET /visit_actions.json
  def index
    @visit_actions = VisitAction.all
  end

  # GET /visit_actions/1
  # GET /visit_actions/1.json
  def show
  end

  # GET /visit_actions/new
  def new
    @visit_action = VisitAction.new
  end

  # GET /visit_actions/1/edit
  def edit
  end

  # POST /visit_actions
  # POST /visit_actions.json
  def create
    @visit_action = VisitAction.new(visit_action_params)

    respond_to do |format|
      if @visit_action.save
        format.html { redirect_to @visit_action, notice: 'Visit action was successfully created.' }
        format.json { render :show, status: :created, location: @visit_action }
      else
        format.html { render :new }
        format.json { render json: @visit_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visit_actions/1
  # PATCH/PUT /visit_actions/1.json
  def update
    respond_to do |format|
      if @visit_action.update(visit_action_params)
        format.html { redirect_to @visit_action, notice: 'Visit action was successfully updated.' }
        format.json { render :show, status: :ok, location: @visit_action }
      else
        format.html { render :edit }
        format.json { render json: @visit_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visit_actions/1
  # DELETE /visit_actions/1.json
  def destroy
    @visit_action.destroy
    respond_to do |format|
      format.html { redirect_to visit_actions_url, notice: 'Visit action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit_action
      @visit_action = VisitAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visit_action_params
      params.require(:visit_action).permit(:visit_id, :user_id, :server_time, :url, :referrer_url, :page_title, :page, :entity, :subject, :total_time_on_action)
    end
end

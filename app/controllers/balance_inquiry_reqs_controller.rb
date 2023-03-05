class BalanceInquiryReqsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_balance_inquiry_req, only: %i[ show update destroy ]
  
  # GET /balance_inquiry_reqs
  # GET /balance_inquiry_reqs.json
  def index
    @balance_inquiry_reqs = BalanceInquiryReq.all
    render json: @balance_inquiry_reqs
  end

  # GET /balance_inquiry_reqs/1
  # GET /balance_inquiry_reqs/1.json
  def show
  end

  # POST /balance_inquiry_reqs
  # POST /balance_inquiry_reqs.json
  def create
    @balance_inquiry_req = BalanceInquiryReq.new(balance_inquiry_req_params)

    if @balance_inquiry_req.save
      render :show, status: :created, location: @balance_inquiry_req
    else
      render json: @balance_inquiry_req.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /balance_inquiry_reqs/1
  # PATCH/PUT /balance_inquiry_reqs/1.json
  def update
    if @balance_inquiry_req.update(balance_inquiry_req_params)
      render :show, status: :ok, location: @balance_inquiry_req
    else
      render json: @balance_inquiry_req.errors, status: :unprocessable_entity
    end
  end

  # DELETE /balance_inquiry_reqs/1
  # DELETE /balance_inquiry_reqs/1.json
  def destroy
    @balance_inquiry_req.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_balance_inquiry_req
      @balance_inquiry_req = BalanceInquiryReq.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def balance_inquiry_req_params
      params.require(:balance_inquiry_req).permit(:AccNm, :AccType, :LoggedState, :LoggedFlag, :InqDtTm, :instructionId, :originalCreationDate, :originalCreationTime)
    end
end

require "test_helper"

class BalanceInquiryReqsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @balance_inquiry_req = balance_inquiry_reqs(:one)
  end

  test "should get index" do
    get balance_inquiry_reqs_url, as: :json
    assert_response :success
  end

  test "should create balance_inquiry_req" do
    assert_difference("BalanceInquiryReq.count") do
      post balance_inquiry_reqs_url, params: { balance_inquiry_req: { AccNm: @balance_inquiry_req.AccNm, AccType: @balance_inquiry_req.AccType, InqDtTm: @balance_inquiry_req.InqDtTm, LoggedFlag: @balance_inquiry_req.LoggedFlag, LoggedState: @balance_inquiry_req.LoggedState, instructionId: @balance_inquiry_req.instructionId, originalCreationDate: @balance_inquiry_req.originalCreationDate, originalCreationTime: @balance_inquiry_req.originalCreationTime } }, as: :json
    end

    assert_response :created
  end

  test "should show balance_inquiry_req" do
    get balance_inquiry_req_url(@balance_inquiry_req), as: :json
    assert_response :success
  end

  test "should update balance_inquiry_req" do
    patch balance_inquiry_req_url(@balance_inquiry_req), params: { balance_inquiry_req: { AccNm: @balance_inquiry_req.AccNm, AccType: @balance_inquiry_req.AccType, InqDtTm: @balance_inquiry_req.InqDtTm, LoggedFlag: @balance_inquiry_req.LoggedFlag, LoggedState: @balance_inquiry_req.LoggedState, instructionId: @balance_inquiry_req.instructionId, originalCreationDate: @balance_inquiry_req.originalCreationDate, originalCreationTime: @balance_inquiry_req.originalCreationTime } }, as: :json
    assert_response :success
  end

  test "should destroy balance_inquiry_req" do
    assert_difference("BalanceInquiryReq.count", -1) do
      delete balance_inquiry_req_url(@balance_inquiry_req), as: :json
    end

    assert_response :no_content
  end
end

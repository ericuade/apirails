json.extract! balance_inquiry_req, :id, :AccNm, :AccType, :LoggedState, :LoggedFlag, :InqDtTm, :instructionId, :originalCreationDate, :originalCreationTime, :created_at, :updated_at
json.url balance_inquiry_req_url(balance_inquiry_req, format: :json)

class CreateBalanceInquiryReqs < ActiveRecord::Migration[7.0]
  def change
    create_table :balance_inquiry_reqs do |t|
      t.integer :AccNm
      t.string :AccType
      t.boolean :LoggedState
      t.boolean :LoggedFlag
      t.string :InqDtTm
      t.string :instructionId
      t.integer :originalCreationDate
      t.integer :originalCreationTime

      t.timestamps
    end
  end
end

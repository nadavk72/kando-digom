class AddColumnSewageBillingPercentageToFactories < ActiveRecord::Migration
  def change
    add_column :factories, :sewage_billing_percentage, :integer
  end
end

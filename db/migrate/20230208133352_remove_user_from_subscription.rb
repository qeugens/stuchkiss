class RemoveUserFromSubscription < ActiveRecord::Migration[7.0]
  def change
    remove_reference :subscriptions, :user, null: false, foreign_key: true
  end
end

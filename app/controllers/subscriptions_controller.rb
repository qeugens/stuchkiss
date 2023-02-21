class SubscriptionsController < ApplicationController
  def index
    subscriptions = Subscription.all
    if subscriptions
      render json: {status: "SUCCESS", message: "All subscriptions ready", data: subscriptions}, status: :ok
    else
      render json: subscriptions.errors, status: :bad_request
    end
  end

  def create
    subscription = Subscription.create(subscription_param)
    render json: subscription
  end

  def update
    subscription = Subscription.find(params[:id])
    subscription.update(subscription_param)
    render json: subscription
  end

  def destroy
    subscription = Subscription.find(params[:id])
    subscription.destroy
    head :no_content, status: :ok
  end

  private
  def subscription_param
    params.require(:subscription).permit(:collection_id, :user_id)
  end

end

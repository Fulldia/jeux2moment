class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.now(subscriber_params)
    if @subscriber.saved_subscriber
      cookies[:saved_lead] = true
      redirect_to root_path, notice "Merci et à très bientôt !"
    else
      redirect_to root_path, notice: "Erreur, veuillez rééssayer"
    end

    private

      def subscriber_params
        params.require(:subscriber).permit(:name, :email)
      end
end

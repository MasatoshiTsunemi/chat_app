class RoomsController < ApplicationController
  
  # Deviseのログイン確認
  before_action :authenticate_user!

  # Room一覧アクション
  def index
    @rooms = Room.all.order(:id)
  end

  def show
    @room = Room.find(params[:id])
    # メッセージ一覧を取得
    @messages = Message.all
  end

  def new
  end
  
  def create
  end

  def update
  end

  def destroy
  end

  
end

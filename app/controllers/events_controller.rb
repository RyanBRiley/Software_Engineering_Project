class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
     @in_index = true
     @events = Event.paginate(page: params[:page])
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @host = User.find(@event.user_id)
    @users = @event.likers(User)
    @game = Game.find(@event.game_id)
  end

  # GET /events/new
  def new
    @event = Event.new
    @games = Game.all
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
  
    @event = Event.new(event_params)


      if @event.save
      flash[:success] = "Event Successfully Created" 
      redirect_to @event 
      
      else
        @games = Game.all
        render 'new'
      end
  
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      flash[:success] = "Event Deleted"
      format.html { redirect_to games_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :event_date, :game_id, :location, :info, :user_id)
    end
end

class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy, :attend, :leave]
  # before_action :authenticate_user!
  
  def index
    @events = Event.all
  end

  def show
  end

  def attend
    @event.attendees << current_user
    redirect_to event_path(@event)
  end

  def leave
    @event.attendees.delete(current_user)
    redirect_to event_path(@event)
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = current_user.events.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
    
  end


  def update
    image_array = @event.event_images

    if params[:images_to_delete]
      params[:images_to_delete].each do |index|
        deleted_image = image_array.delete_at(index.to_i)
        deleted_image.try(:remove!)
      end
    end

    if params[:event][:event_images].present?
      image_array += params[:event][:event_images]
    end

    @event.event_images = image_array

    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
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
      params.require(:event).permit(:title, :location, :comment, :user_id, :creator)
    end
end

class PenguinsController < ApplicationController
  def index
    @penguins = Penguin.all
  end

  def show
    @penguin = Penguin.find(params[:id])
  end

  def edit
  end

  def update
  end

  def create
    @penguin = Penguin.new(new_penguin_params)
    #try and save the penguiN!
    if @penguin.save
      flash[:notice] = 'NEW PENGUIN SUCCESSFULLY CREATED!'
      redirect_to(penguins_path)
    else
      @errors = @penguin.errors.full_messages
    end
  end

  def new
    #this will be passed to our form helper to let it know where to send the form!  
    @penguin = Penguin.new
  end

  def destroy
  end

  #build our strong parameters
  private

    def new_penguin_params
      params.require(:penguin).permit(:name, :description, :sex, :breed)
    end
end

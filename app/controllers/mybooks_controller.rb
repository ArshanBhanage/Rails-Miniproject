class MybooksController < ApplicationController
  before_action :set_mybook, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /mybooks or /mybooks.json
  def index
    @mybooks = Mybook.all
  end

  # GET /mybooks/1 or /mybooks/1.json
  def show
  end

  def browse
    @mybooks = Mybook.all
  end

  # GET /mybooks/new
  def new
    #@mybook = Mybook.new
    @mybook = current_user.mybooks.build
  end

  # GET /mybooks/1/edit
  def edit
  end

  # POST /mybooks or /mybooks.json
  def create
    #@mybook = Mybook.new(mybook_params)
     @mybook =  current_user.mybooks.build(mybook_params)
    respond_to do |format|
      if @mybook.save
        format.html { redirect_to @mybook, notice: "Mybook was successfully created." }
        format.json { render :show, status: :created, location: @mybook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mybook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mybooks/1 or /mybooks/1.json
  def update
    respond_to do |format|
      if @mybook.update(mybook_params)
        format.html { redirect_to @mybook, notice: "Mybook was successfully updated." }
        format.json { render :show, status: :ok, location: @mybook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mybook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mybooks/1 or /mybooks/1.json
  def destroy
    @mybook.destroy
    respond_to do |format|
      format.html { redirect_to mybooks_url, notice: "Mybook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
     @mybook = current_user.mybooks.find_by(id: params[:id])
     redirect_to mybooks_path, notice: "Not authorised" if @mybook.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mybook
      @mybook = Mybook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mybook_params
      params.require(:mybook).permit(:title, :image, :description, :email, :phone, :user_id)
      #mybook.image.attach(params[:image])
      #@mybook.image.attach(io: File.open('app/assets/images/placeholder.png'), filename: 'placeholder.png', content_type: 'image/png') unless Mybook.image.first.nil?
        
       
    end
end

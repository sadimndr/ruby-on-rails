class RailsblogsController < ApplicationController
  before_action :set_railsblog, only: %i[ show edit update destroy ]

  # GET /railsblogs or /railsblogs.json
  def index
    @railsblogs = Railsblog.all
  end

  # GET /railsblogs/1 or /railsblogs/1.json
  def show
  end

  # GET /railsblogs/new
  def new
    @railsblog = Railsblog.new
  end

  # GET /railsblogs/1/edit
  def edit
  end

  # POST /railsblogs or /railsblogs.json
  def create
    @railsblog = Railsblog.new(railsblog_params)

    respond_to do |format|
      if @railsblog.save
        format.html { redirect_to railsblog_url(@railsblog), notice: "Railsblog was successfully created." }
        format.json { render :show, status: :created, location: @railsblog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @railsblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /railsblogs/1 or /railsblogs/1.json
  def update
    respond_to do |format|
      if @railsblog.update(railsblog_params)
        format.html { redirect_to railsblog_url(@railsblog), notice: "Railsblog was successfully updated." }
        format.json { render :show, status: :ok, location: @railsblog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @railsblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /railsblogs/1 or /railsblogs/1.json
  def destroy
    @railsblog.destroy

    respond_to do |format|
      format.html { redirect_to railsblogs_url, notice: "Railsblog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_railsblog
      @railsblog = Railsblog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def railsblog_params
      params.require(:railsblog).permit(:title, :upload, :description)
    end
end

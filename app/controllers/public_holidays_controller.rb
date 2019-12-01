class PublicHolidaysController < ApplicationController
  before_action :set_public_holiday, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[ :index, :show ]

  # GET /public_holidays
  # GET /public_holidays.json
  def index
    @public_holidays = PublicHoliday.all
  end

  # GET /public_holidays/1
  # GET /public_holidays/1.json
  def show
  end

  # GET /public_holidays/new
  def new
    @public_holiday = current_user.public_holidays.build
  end

  # GET /public_holidays/1/edit
  def edit
  end

  # POST /public_holidays
  # POST /public_holidays.json
  def create
    @public_holiday = current_user.public_holidays.build(public_holiday_params)

    respond_to do |format|
      if @public_holiday.save
        format.html { redirect_to @public_holiday, notice: 'Public holiday was successfully created.' }
        format.json { render :show, status: :created, location: @public_holiday }
      else
        format.html { render :new }
        format.json { render json: @public_holiday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public_holidays/1
  # PATCH/PUT /public_holidays/1.json
  def update
    respond_to do |format|
      if @public_holiday.update(public_holiday_params)
        format.html { redirect_to @public_holiday, notice: 'Public holiday was successfully updated.' }
        format.json { render :show, status: :ok, location: @public_holiday }
      else
        format.html { render :edit }
        format.json { render json: @public_holiday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_holidays/1
  # DELETE /public_holidays/1.json
  def destroy
    @public_holiday.destroy
    respond_to do |format|
      format.html { redirect_to public_holidays_url, notice: 'Public holiday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_holiday
      @public_holiday = PublicHoliday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def public_holiday_params
      params.require(:public_holiday).permit(:status, :user_id)
    end
end

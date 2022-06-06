class ProceedingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_proceeding, only: %i[show edit update destroy]

  # GET /proceedings
  def index
    @proceedings = Proceeding.all
  end

  # GET /proceedings/1
  def show; end

  # GET /proceedings/new
  def new
    @category = current_user.categories
    @proceeding = Proceeding.new
  end

  # GET /proceedings/1/edit
  def edit
    @category = current_user.categories
  end

  # POST /proceedings
  def create
    @proceeding = Proceeding.new(proceeding_params)

    respond_to do |format|
      if @proceeding.save
        format.html { redirect_to proceeding_url(@proceeding), notice: 'Proceeding was successfully created.' }
        # redirect_to category_path(id: @payment.category_id), notice: 'Payment was successfully created.'
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proceedings/1
  def update
    respond_to do |format|
      if @proceeding.update(proceeding_params)
        format.html { redirect_to proceeding_url(@proceeding), notice: 'Proceeding was successfully updated.' }
        # redirect_to @payment, notice: 'Payment was successfully updated.'
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proceedings/1
  def destroy
    @proceeding.destroy

    respond_to do |format|
      format.html { redirect_to proceedings_url, notice: 'Proceeding was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_proceeding
    @proceeding = Proceeding.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def proceeding_params
    params.require(:proceeding).permit(:name, :amount, :category_id)
  end
end

class WebCustomersController < ApplicationController
  before_action :set_web_customer, only: [:show, :edit, :update, :destroy]

  # GET /web_customers
  # GET /web_customers.json
  def index
    @web_customers = WebCustomer.all
  end

  # GET /web_customers/1
  # GET /web_customers/1.json
  def show
  end

  # GET /web_customers/new
  def new
    @web_customer = WebCustomer.new
  end

  # GET /web_customers/1/edit
  def edit
  end

  # POST /web_customers
  # POST /web_customers.json
  def create
    @web_customer = WebCustomer.new(web_customer_params)

    respond_to do |format|
      if @web_customer.save
        format.html { redirect_to @web_customer, notice: 'Web customer was successfully created.' }
        format.json { render :show, status: :created, location: @web_customer }
      else
        format.html { render :new }
        format.json { render json: @web_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_customers/1
  # PATCH/PUT /web_customers/1.json
  def update
    respond_to do |format|
      if @web_customer.update(web_customer_params)
        format.html { redirect_to @web_customer, notice: 'Web customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @web_customer }
      else
        format.html { render :edit }
        format.json { render json: @web_customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_customers/1
  # DELETE /web_customers/1.json
  def destroy
    @web_customer.destroy
    respond_to do |format|
      format.html { redirect_to web_customers_url, notice: 'Web customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_customer
      @web_customer = WebCustomer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_customer_params
      params.fetch(:web_customer, {})
    end
end

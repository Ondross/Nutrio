class PurchasesController < ApplicationController
  # GET /purchases
  # GET /purchases.xml
  
  def home
	
  
  end
  
  def index
  if user_signed_in?
    @purchases = Purchase.find_all_by_user(current_user.email)
	else
	@purchases = "none"
	end
	@foods = Food.all
	@nutrients = Nutrient.all
			
	#Recommended DVs for different foods.
	@vitadv = 10
	@vitbdv = 10
	@fiberdv = 30 
	
	if params[:days]
		if params[:days] != 'last'
			@days = params[:days]
		else
			@purchases = Purchase.find(:all, :conditions => {:user => current_user.email, :date => Purchase.find(:last, :conditions => {:user => current_user.email}).date} )   #doesn't use :last because each food is a separate order, even on bulk purchases.  Still works for both purchases!
		end
	end
	
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @purchases }
    end
  end
  
  def list
	@purchases = Purchase.all
	@foods = Food.all
	
   end

  # GET /purchases/1
  # GET /purchases/1.xml
  def show
    @purchase = Purchase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @purchase }
    end
  end

  # GET /purchases/new
  # GET /purchases/new.xml
  def new
    @purchase = Purchase.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @purchase }
    end
  end

  # GET /purchases/1/edit
  def edit
    @purchase = Purchase.find(params[:id])
  end

  # POST /purchases
  # POST /purchases.xml
  def create
    @purchase = Purchase.new(params[:purchase])
	
	@purchase.food = @purchase.food.downcase
	@purchase.user = current_user.email
	@purchase.date = Time.now

    respond_to do |format|
      if @purchase.save
        format.html { redirect_to(@purchase, :notice => 'Purchase was successfully created.') }
        format.xml  { render :xml => @purchase, :status => :created, :location => @purchase }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @purchase.errors, :status => :unprocessable_entity }
      end
    end
  end
  
    def listcreate
    @purchase = Purchase.new
	@purchase2 = Purchase.new
	
	if params[:food1] != "Food"
		@purchase.food = params[:food1].downcase
		@purchase.quantity = params[:quant1]
		@purchase.user = current_user.email
		@purchase.date = Time.now
	end
	
	if params[:food2] != "Food"
		@purchase2.food = params[:food2].downcase
		@purchase2.quantity = params[:quant2]
		@purchase2.user = current_user.email
		@purchase2.date = Time.now
	end

    respond_to do |format|
      if @purchase.save and @purchase2.save
        format.html { redirect_to(purchases_path, :notice => 'Purchase was successfully created.') }
        format.xml  { render :xml => @purchase, :status => :created, :location => @purchase }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @purchase.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def history
  @days = params[:days]
  
  
  respond_to do |format|
        format.html { redirect_to(purchases_path) }
        format.xml  { render :xml => @purchase, :status => :created, :location => @purchase }
	end
  end

  # PUT /purchases/1
  # PUT /purchases/1.xml
  def update
    @purchase = Purchase.find(params[:id])

    respond_to do |format|
      if @purchase.update_attributes(params[:purchase])
        format.html { redirect_to(@purchase, :notice => 'Purchase was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @purchase.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /purchases/1
  # DELETE /purchases/1.xml
  def destroy
    @purchase = Purchase.find(params[:id])
    @purchase.destroy

    respond_to do |format|
      format.html { redirect_to(purchases_url) }
      format.xml  { head :ok }
    end
  end
end

class InterestedController < ApplicationController
  def index
  	@interested = Interested.all

  	respond_to do |format|
  		 format.html #index.html.erb
  		 format.json { render json: @interested }
  		end
  	end

  	#GET  /interested/1
  	#GET /interested/1
  	def show
  		@interested = Interested.find(params[:id])

  		respond_to do |format|
  			format.html #show.html.erb
  			format.json { render json: @interested }
  		end
  	end

  	#GET /interested/new
  	#GET /interested/new.json
  	def  new
  		@interested = Interested.new

  		respond_to do |format|
  			format.html #new.html.erb
  			format.json { render json: @interested }
  		end
   	end

   	#GET /interested/1/edit
   	def edit
      @interested = Interested.find(params[:id])
   	end

   	#POST /interested
   	#POST /interested/json
   	def create
   		@interested = Interested.new(params[:interested])

   		respond_to do |format|
   			if @interested.save
   				format.html{ redirect_to @interested, notice: 'Interested was successfully created.'}
   				format.json{ render json: @interested, status: :create, location: @interested }
   			else
   				format.html { render action: "new" }
   				format.json { render json: @interested.error, status: :unprocessable_entity }
   			end
   		end
   	end

   	#PUT /interested/1
   	#PUT /interested/1.json
   	def update
   		@interested = Interested.find(params[:id])

   		respond_to do |format|
   			if @interested.update_attributes(params[:interested])
   			format.html { redirect_to @interested, notice: 'Interested was sucessfully updated.'  }
   			format.json {head :no_content }
   			else
   				format.html { render action: "edit" }
   				format.json { render json: @interested.error, status: :unprocessable_entity }
   			end
   		end
   	end

   	#DELETE /Interested/1
   	#DELETE /Interested/1.json
   	def destroy
   		@interested = Interested.find(params[:id])
   		@interested.destroy

   		respond_to do |format|
   			format.html { redirect_to interested_url }
   			format.json {head :no_content }
   		end
   	end

    def want
      
    end
end

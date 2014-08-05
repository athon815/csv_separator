class UploadsController < ApplicationController
  include CSVUpload

  def new
    @upload = Upload.new
    end

    def create
  	@upload = Upload.new(import_params)
  	if @upload.save
  		redirect_to root_url
		end
	end

  def show
  	@upload = Upload.find(params[:id])
  end

  def index
  	@uploads = Upload.all
  end

  def import
    csv_separate(params[:file].tempfile, params[:keywords])
    redirect_to root_url
  end

  private

  def set_upload
    @upload = Upload.find(params[:id])
  end

  def	import_params
  	params.require(:file).permit(:keywords, :first_name, :last_name, :email, :company, :religion, :title, :city, :street, :state, :zip, :phone, :web_site, :revenue, :employees)
  end
end
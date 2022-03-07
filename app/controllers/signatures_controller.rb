class SignaturesController < ApplicationController

  def index
    @signatures = Signature.all
  end

  def show
    @signature = Signature.find(params[:id])
  end

  def new
    @signature = Signature.new
  end

  def create
    @signature = Signature.new(signature_params)

    respond_to do |format|
      if @signature.save
        format.html { redirect_to signature_url(@signature), notice: "Signature was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @signature = Signature.find(params[:id])
    @signature.destroy

    respond_to do |format|
      format.html { redirect_to signatures_url, notice: "Signature was successfully deleted." }
    end
  end

  private

  def signature_params
    params.require(:signature).permit(:fullname, :email, :job_title)
  end

end

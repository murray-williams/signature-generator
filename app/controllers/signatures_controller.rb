class SignaturesController < ApplicationController

  def index
    @signatures = Signature.all
  end

end

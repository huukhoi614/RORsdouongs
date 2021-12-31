class CtsphamsController < ApplicationController
	
private
	def set_ctspham
	  @ctspham = Ctspham.find(params[:id])
	end


	# Only allow a list of trusted parameters through.
	def ctspham_params
	  params.require(:ctspham).permit(:sanpham_id, :size_id)
	end
end

module Api::V1
  class LoaispsController < ActionController::API
  
	  def index
	  	@loaisps = Loaisp.select(:id, :tenloai)
        render json: @loaisps, methods: [:filtered_sanpham]
	  end

	end
end

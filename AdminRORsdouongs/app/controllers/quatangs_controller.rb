class QuatangsController < InheritedResources::Base
  private

    def quatang_params
      params.require(:quatang).permit(:soluongmua, :soluongtang, :giamgiathem, :ctkhuyenmai_id)
    end

end

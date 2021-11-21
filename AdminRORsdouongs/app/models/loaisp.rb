class Loaisp < ApplicationRecord
    has_many :sanphams

    def filtered_sanpham
        self.sanphams.map {|sanpham| {id: sanpham.id, name: sanpham.tensanpham, image: sanpham.anh}}
    end


end

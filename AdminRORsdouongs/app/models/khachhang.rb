class Khachhang < ApplicationRecord
	validates :sodienthoai, :presence => true, :uniqueness => true

	  def Khachhang.checkphone(sodienthoai) 
        if khachhang = find_by_sodienthoai(sodienthoai)
          khachhang
        end
    end

    def Khachhang.encrypt_password(password, salt) 
        Digest::SHA2.hexdigest(password + salt)
    end

    def Khachhang.authenticate(sodienthoai, password) 
        if khachhang = find_by_sodienthoai(sodienthoai)
            if khachhang.hashed_password == encrypt_password(password, khachhang.salt)
               khachhang
            end
        end
    end
    
 
end

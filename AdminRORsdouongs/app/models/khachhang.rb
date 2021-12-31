class Khachhang < ApplicationRecord
	validates :sodienthoai, :presence => true, :uniqueness => true
	
    def Khachhang.checkphone(sodienthoai) 
        if khachhang = find_by_sodienthoai(sodienthoai)
          khachhang
        end
    end

    validates :password, :confirmation => true
    attr_accessor :password_confirmation
    attr_reader :password
  
    validate :password_must_be_present
    validate :sodienthoai_must_be_valid
  
    def Khachhang.encrypt_password(password, salt) 
        Digest::SHA2.hexdigest(password + salt)
    end
  
    def password=(password) 
        @password = password
  
        if password.present?
            generate_salt
            self.hashed_password = self.class.encrypt_password(password, salt)
            self.point = 0
        end
    end
    def Khachhang.authenticate(sodienthoai, password) 
        if khachhang = find_by_sodienthoai(sodienthoai)
            if khachhang.hashed_password == encrypt_password(password, khachhang.salt)
               khachhang
            end
        end
    end
    def point
        diem = 0
        if(self.sodienthoai.present?)
            @dathangss = Dathang.where(:khachhang_id => self.id)
            order = OrderStatus.where(:tenStt => "Hoàn thành").last
            @dathangs = @dathangss.where(:order_status_id => order.id)
            diem = @dathangs.to_a.sum{|item| item.tonggia} * 2/1000
        end
        diem
    end
private
    def password_must_be_present 
        if hashed_password.present? == false
            errors.add(:password, "password missing")
        end
    end
    def sodienthoai_must_be_valid
    	if sodienthoai.empty?
    		errors.add(:sodienthoai, "phone missing")
    	end
    end
  
    def generate_salt
        self.salt = self.object_id.to_s + rand.to_s
    end
end
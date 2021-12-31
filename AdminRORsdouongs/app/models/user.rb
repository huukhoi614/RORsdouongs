require 'digest/sha2'
class User < ApplicationRecord
	validates :name, :presence => true, :uniqueness => true
    validates :password, :confirmation => true
    validates :phone, :presence => true, :uniqueness => true
    attr_accessor :password_confirmation
    attr_reader :password
  
    validate :password_must_be_present
    validate :phone_must_be_valid
  
    def User.encrypt_password(password, salt) 
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
  
    def User.authenticate(name, password) 
        if user = find_by_name(name)
            if user.hashed_password == encrypt_password(password, user.salt)
               user
            end
        end
    end
    
    def User.authenticate2(phone, password) 
        if user = find_by_phone(phone)
            if user.hashed_password == encrypt_password(password, user.salt)
               user
            end
        end
    end
    def point
        @khachhang = Khachhang.where(:sodienthoai => self.phone).last
        @khachhangj= Khachhang.find(@khachhang.id)
        diem = 0
        if(@khachhangj.sodienthoai.present?)
            @dathangss = Dathang.where(:khachhang_id => @khachhang.id)
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
    def phone_must_be_valid
    	if phone.empty?
    		errors.add(:phone, "phone missing")
    	end
    end
  
    def generate_salt
        self.salt = self.object_id.to_s + rand.to_s
    end
end

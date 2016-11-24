class Product < ApplicationRecord
  validates :title,:image_url,:description,:price ,:presence=>{message:"不能为空哦！！"}#:??=> 和??:都行
  validates :price,:numericality=>{:greater_than_or_equal_to => 0.01,message:"开价为负，马云也输"}
  validates :title ,:uniqueness=>{message:"商品名冲突"}
  validates :image_url,format:{
      with:/\.(gif|jpg|png)$/i,
      message:'图片格式错误，只能是gif,jpg,png格式',
      :multiline => true
  }
end

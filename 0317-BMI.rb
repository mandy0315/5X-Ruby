require "sinatra"
require "sinatra/reloader" if development? #if development? 如果是開發模式 載入 sinatra-contrib

# erb =可以在Ruby載入HTML; layout: 共用html框架
get "/" do
  erb :hello,layout: :my_layout
  # "hello"
end

# html放Rudy
get "/myname/:name" do
  @name= params[:name]
  erb :name,layout: :my_layout
  # "hello"
end

# form
# 輸入網址GET取得BMI.html
get "/calc/bmi" do
  erb :BMI,layout: :my_layout
end

# POST 傳送資料，到這   
post "/calc/bmi/result" do
  h= params[:height].to_f / 100
  w= params[:weight].to_f
  bmi=  (w / (h ** 2)).round(1)
  erb :result,layout: :my_layout,locals: {result: bmi}
end


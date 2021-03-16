# puts "hello world"
require "sinatra"
get "/" do
  "Home!"
end

get "/hell" do
  "go to hello world"
end

get "/about.php" do
    "這不是PHP做的"
end

# "*" 散開 splat
get "/sample" do
  "#{[*1..49].sample(5)}"
end

get "/cats/:id" do
    "你好，你是第 #{params[:id]} 號的貓"
end

get "/sample-num/:num" do
  num= params[:num].to_i
  if num > 0 and num < 50
    "#{[*1..49].sample(num)}"
  else
    "無法顯示"
  end
end

get "/sample-num/:num" do 


# 無提供 api
# require 'nokogiri' # 選取資料
# require 'open-uri' # 開啟網址 爬蟲

  # 抓取解析 HTML document
# web ='https://www.tenlong.com.tw/zh_tw/bestselling'
# doc = Nokogiri::HTML(URI.open(web))

#   # HTML裡找尋.css,迭代迴圈每項列出
# doc.css('.single-book .title').each do |x|
#   puts x.content
# end

# 提供api
# 載入原始檔、外掛
require 'json'
# 讀取
f = File.read('./file/null.json') #File.read
pf = JSON.parse(f)

result = pf["result"]["records"].select{ |r| r["ItemEngName"] === 'PM2.5' }

result.each do |rr|
  puts "#{rr['SiteName']} = #{rr['MonitorValue01']} #{rr['MonitorValue02']} #{rr['MonitorValue03']}"
end

# CÁC BƯỚC TẠO LAYOUTS CHO PROJECT RUBY ON RAILS

1. Tạo base controller cho module backend và frontend
- rails g controller backend/application index
- rails g controller frontend/application index 

2. Sửa routes

3. Sửa controller 
- Thêm dòng sau trong Backend controller: layout "backend"
- Thêm dòng sau trong Frontend controller: layout "frontend"

4. Tạo base css 
- Thêm dòng sau vào frontend.css: 
*= require_self
*= require_tree ./frontend/
- Thêm dòng sau vào backend.css 
*= require_self
*= require_tree ./backend/
5. Tạo đăng kí cho 2 file css 
- Vào thư mục config/initializers/assets.rb, thêm dòng lệnh sau:
Rails.application.config.assets.precompile += %w( frontend.css backend.css ) 

6. Tạo layout backend.html.erb và frontend.html.erb 
- Tạo 2 file backend.html.erb và frontend.html.erb trong thư mục views/layouts 
- Sửa link CSS cho backend.html.erb như sau (frontend cũng tương tự)
<%= stylesheet_link_tag "backend", media: "all", "data-turbolinks-track": "reload" %>

7. Edit backend/application.scss và frontend/application.scss


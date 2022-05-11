# GM_ET718_2022may11_resumeDB_rails

rails new blog
rails new resumeDB



rails generate controller Welcome index
rails generate controller Welcome index



root 'welcome#index'
root 'welcome#index'



rails generate model Article title:string text:text
rails generate scaffold Resume name image_url role location email phone
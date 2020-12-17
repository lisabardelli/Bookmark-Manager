###To be rendered in  diagrams.codes

####User Story 1
```
alias client="/bookmarks"
alias controller="app"
alias model="Bookmark"
alias view="erb bookmarks"

client->controller: "get request"
controller->model: ".all"
model->controller: "[bookmarks]"
controller->view: "[bookmarks]"
view->controller: "html"
controller->client: "response"
```

####User Story 2
```
alias client="Client"
alias controller="app.rb"
alias model="bookmark.rb"
alias views="Views"
alias db="Bookmark Database"

client->controller: "get '/' request"
controller->views: "erb :index"
views->controller: "index.erb"
controller->client: "index.html response"
client->controller: "get '/bookmarks/new' request"
controller->views: "erb :bookmarks/new"
views->controller: "new.erb"
controller->client: "new.html response"
client->controller: "post /bookmarks request"
controller->model: ".create(with params)"
model->db: "INSERT INTO bookmarks (url, title)"
model->controller: "'post /bookmarks'"
controller->controller: "redirect 'get /bookmarks'"
controller->model: ".all"
db->model: "SELECT * FROM bookmarks"
model->controller: "[bookmarks]"
controller->views: "[bookmarks]"
views->controller: "bookmarks/index.erb"
controller->client: "index.html response"
```

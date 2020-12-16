### User Stories
```
As a User
So that I can keep track of my bookmarks
I want to be able to see a list of bookmarks
```
```
Given: that I have previously bookmarked sites
When: I want to view historic bookmarks
Then: the website should return a list of bookmarks
```

```
As a user
So that I can record a bookmark for later use
I want to be able to add a bookmark to my list of bookmarks
```
```
Given: that I have found a website I would like to save the url for
When: browsing the internet
Then: I would like to be able to save the url for future reference
```

### Domain Model
User Story 1 Diagram:

![US1 Domain Diagram](https://github.com/chriswhitehouse/bookmark_manager/blob/main/diagrams/user_story_1_diagram.svg)

* Objects: user, bookmark, bookmark(list)

* Properties: name, url,

* Methods: see_list

|Class |User|
|-----|-----|
|Properties| name |
|Actions | see_name |

|Class | Bookmark |
|---|---|
|Properties | url, short_name, description |
|Actions|    |

|Class | BookmarkManager |
|-----|------|
|Properties | bookmarks.db |
|Actions | see_list, create_bookmark |

### Database Setup

1. Connect to psql
2. Create a development database using the psql command `CREATE DATABASE bookmark_manager`;
3. Connect to the database using the psql command `\c bookmark_manager`;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
5. Create a test database using the psql command `CREATE DATABASE bookmark_manager_test`
6. Repeat steps 3 and 4 for the test database.

# Bookmark Manager

Build a web app that stores web bookmarks in a database.


Each day I have been pairing with a different person. The result of each pairing session has been push on a separate branch.


### User Stories
```
As a User
So that I can keep track of my bookmarks
I want to be able to see a list of bookmarks
```

```
As a user
So that I can record a bookmark for later use
I want to be able to add a bookmark to my list of bookmarks
```

### Domain Model


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
4. Run the query we have saved in the file '01_create_bookmarks_table.sql'
5. Create a test database using the psql command `CREATE DATABASE bookmark_manager_test`
6. Repeat steps 3 and 4 for the test database.
7. Alter the each of the tables to add a column, by running the query we have saved in '02_add_title_to_bookmarks.sql'


### How to run

```
rackup

```

## **Home**
![Home](home.png)


## **Add a bookmark**
![Add a bookmark](add.png)

## **See Bookmarks**
![See Bookmarks](result.png)

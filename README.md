```
As a User
So that I can visit my favourite website
I would like to see a list of bookmarks
```
```
As a User
So that I can record my favorite websites
I would like to add new bookmarks
```
```
1. psql postgres
2. CREATE DATABASE bookmark_manager;
3. CREATE TABLE bookmarks ( id SERIAL PRIMARY KEY, url VARCHAR(60));
4. \dt
5. connect to the Database using \c bookmark_manager;
6. \q
```

```
1. psql postgres
2. CREATE DATABASE bookmark_manager_test;
3. CREATE TABLE bookmarks ( id SERIAL PRIMARY KEY, url VARCHAR(60));
4. \dt
5. connect to the Database using \c bookmark_manager_test;

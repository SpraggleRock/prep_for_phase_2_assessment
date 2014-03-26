### RESTful Routes:


#### Cats (resource) 

-  READING
-  VERB URL             ACTION  DESC
-  GET /cats            index   show a list of cats
-  GET /cats/:id        show    show an individual cat

-  CREATING
-  GET /cats/new        new     show the form to create a new cat
-  POST /cats           create  create a new cat
 
-  UPDATING
-  GET /cats/:id/edit   edit    show the form to edit an existing cat
-  PUT /cats/:id        update  change the properties of an existing cat

-  DELETING
-  DELETE /cats/:id     delete  delete an existing cat

-  /app/views/cats/new.erb
-                  edit.erb
-                  index.erb
-                  show.erb

-----------------------------------------------------

#### SESSIONS

-  CREATING
-  GET /sessions/new        new     show the form to create a new session (login)
-  POST /sessions           create  create a new session

-  DELETING
-  DELETE /sessions         delete  delete an existing session (logout)

-  /app/views/sessions/new.erb

------------------------------------------------------

#### USERS
-  READING
-  VERB URL              ACTION  DESC
-  GET /users            index   show a list of users
-  GET /users/:id        show    show an individual user (profile page?)

-  CREATING
-  GET /users/new        new     show the form to create a new user (signup)
-  POST /users           create  create a new user

-  UPDATING
-  GET /users/:id/edit   edit    show the form to edit an existing user
-  PUT /users/:id        update  change the properties of an existing user

-  DELETING
-  DELETE /users/:id     delete  delete an existing user

-  /app/views/users/new.erb
-                   edit.erb
-                   cat.erb
-                   show.erb

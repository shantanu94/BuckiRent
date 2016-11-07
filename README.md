###How this Code Works?
-----------------------
The application is hosted in the app folder, where its divided into assets, controllers, helpers, mailers, models, and views.
In this application, we focused on using the assets folder to host the CSS that we needed in the application, and the controllers folder to connect to the database which is held in the `db` folder.
The views folder holds the HTML files that the user interacts with and is able to see the data on the houses that they are interested in. The config folder holds all of the configurations of the various gems that we used in the application.
The app starts with main/index, and works through the cycle of views and controllers that the user can interact with. 

## To execute application:
--------------------------
The website is a renting app for students around OSU.
Please run "rake db:setup" to create the database.

Once the test data is present the home page displays up to 4 of the featured listings.

The user can then either visit one of the listings on the home page or click on all listings and choose one from there.

The user also has other options such as performing a seach based on different criteria, messaging the owner, and viewing the listing on a map.

If a user is signed in they have the ability to view all of their listings, add additional lisitngs, edit/delete their listings, and view their messages from students.

# project description
Our project’s aim is to create a client-server project that acts as a community hub; in other words, a volunteer network. With the use of the Google API, based on one’s location, we will display donation centers (good will, salvation army), community fridges, and non-profit organization centers. When local organizations are in need of volunteers, sanitary products, etc., they can create a posting in order to gain traction in the community. Ideally, we will implement two logins: one for organizations to post their events and projects and one for users to find community events near them.We will also use the Google API to display the location of local volunteer projects that are in need of participants and/or attendees. There already exists websites where volunteer services are provided, however, our aim is to be a medium through which organizations can get in contact with locals and vice versa. And, in the future, we also plan on creating an interface where the client can provide a word and/or phrase and a thread will be displayed based on their input. Our goal is to create a platform that can continuously be improved upon in order to give nonprofits and communities an efficient space to manage and promote their efforts. 

**Actions** 
We want to enable Login capabilities for users. For extra functionality, we would like all users to be able to chat with one another in a public commenting section, as well as send private messages to one another. Additionally, users should be able to make posts, like posts (so that they can refer back to them later on), and share them through any medium.

**SETUP**
Currently, `make prod` commits and pushes to GitHub, and `make dev_env` executes the announcement "Installing developer requirements". Later on, what it will do is download everything you need to run the environment.


**Actionable Requirements**
There are two types of users for this system: community members and local organizations.
* Each user can:
  * Register in the system
    * Local organizations would need to be verified by our database.
      * Upon registering, they will need to provide a display name and a description about their organizations.
      * Multiple people within the organization can have access to the account but will need to be verified each time they are logged out of the system. 
    * Aside from an email and password, a community member must provide a zipcode when registering.
      * If a username already exists, the community member will be notified to change it.
      * Email must be verified before having full access to the website.
  * Delete an account
    * user information used to create the account (i.e. email,password,display name, etc.) will be wiped from our databases and can be used in the future.
  * Modify an account:
    * change basic account information (i.e. profile picture, username, display name, password, etc.)
* Users of type Local Organization can:
  * Create a post
    * 	A post is an informational graphic or description of issues that may be occurring within a specific community. It can also be an ad promoting a certain cause or event. Within a post you can incorporate text, images, gifs, etc. 
  * Modify a post 
    * 	Allows user to make edits to all parts of a post. They can modify the text or remove/change attachments to their post. 
  * Delete a post 
    * 	Removes a post from the organization’s account and their follower’s feed.  
  * Create an event
    * An event is a specific type of post that gives users of the type community member the ability to learn about what’s occurring in their community and make a reservation to attend or help out for the event. 
  * Modify an event
    * 	Allows the organization that created the post to change the date/time, description, etc. 
  * Cancel an event 
    * Notifies users who made reservations for the event that it has been cancelled.  
* Users of type Community Member can:
  * Comment on a post
    * Users can react to a post created by a local organization. This is where users can leave any questions in regards to the post or questions they would like the organizations to answer.
  * Like a post
    * Another way a user can react to a post created by a local organization. A 'like' of a post represents that the user is interested on what has been uploaded by the organization when scrolling through the main feed. The posts that are liked are saved and only the user can access them in the future. The 'liked' posts are found in the account settings under profile. This has the lowest priority of all saved posts.
  * Save/Bookmark a post and/or an event
    * Another way a user can react to a post created by a local organization. Saving/Bookmarking a post/event means that the user is interested in attending the event or that the user is interested in the post uploaded by the organization. In the case of an event, users have yet to confirm full attendance, but will start receiving updates and notifications made by the organizers. This will be saved on their profile tab, giving them easy access to go back to the post/event. This has 2nd highest priority of all saved posts. 
  * Follow an event
    * Another way a user can react to a post created by a local organization. To 'follow' an event means the user is going to attend. The user receive updates and notifications on the event made by the organizations, as well as other users that are attending. A user also has the ability to 'unfollow' an event. The followed event will be saved on the homepage, such that a user may have easy and quick access to it. This has highest priority of all saved posts. 
 
  **How to get set up**
  To get your django project set up, you must first make sure to have the latest version of Django installed on your device. From the command line, cd into a directory where you want to store code that establishes your Django project, and run this command: $ django-admin startproject mysite
  This creates a mysite directory in your current directory. Startproject sohuld create:
  - The outer mysite/ directory.
  - manage.py
  - The inner mysite/ directory
  - mysite/__init__.py
  - mysite/settings.py
  - mysite/urls.py
  - mysite/asgi.py
  - mysite/wsgi.py

Now you have a working environment (project). To create an app, you need to be in the same directory as manage.py, and you can run: $ python3 manage.py startapp appname
             
  **How to run tests**
   Run make tests
  
  **How to run the app**
  To check that the Django project works, run the following command in your outer mysite directory: python3 manage.py runserver
  
  



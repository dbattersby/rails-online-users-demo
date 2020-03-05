# README

A quick example of how you can show current online users in your Rails application.

We are using the **devise gem** for user authentication, other than that there are no third party gems.

Main code worth having a look at:

- app/controllers/application_controller.rb

In the application controller we check the timestamp in our user model called **last_seen_at**. This happens once on each page load if the user is signed in. If the timestamp is older than 5 minutes ago, we will update the timestamp.

- app/controllers/public_controller.rb

In the public controller we will query our database and get the users who have a **last_seen_at** timestamp within the last few minutes. Those are the users that we consider to be online.

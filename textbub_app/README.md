
### Project #4: textbub
​
### Mission Statement
textbub is an easy way to leave a review for a service provider -- via text.
​
### Introduction
This application will allow people to leave one review (via text message) for many service providers with profiles on textbub.  Users can also check this site to see other peoples' reviews of specific service providers and service providers can create textbub profiles.
​
### Notes on Exploring The Site (Guests, Visitors)
While the site is still in development process, for the purpose of demonstration, the site has been seeded with five fake entries of pho-service providers who are hair stylists in the east village of new york.  You can use search and browse these profiles as a browser or leave reviews for these service providers (@MindyCutsRUs, @JohnUnisex ect.) to see how textbub works.  If you want to log in you can use the handle @MindyCutsRUs (or any other seeded handle) with the password test, and log onto the site as if you have a profile.  If you  want you can also set up a profile.


---
​
### Technologies Used(To be updated):
* HTML/CSS
* Ruby
* Rails
* Twillio
* Postgres/SQL
* gems - brcrypt, paperclip
* JQuery
* Javascript
* amazon web services
​
---

​
### User Stories for Service Providers:
#### Authentication
* As a user, there should be a landing page that allows me to sign up/login for the application or browse.
* As a user, I should be able to signup for the application with all fields a service provider would need, address, hours of operation, and create a unique handle.
* As a user, I should be able to log in if I already have an account.
* As a user, if I have previously set up my profile (profile set up is below), after I log-in I should be directed to my profile page which displays my name, the service I provide, the city of my service, a list of reviews of my service, my review text number, a short about me section my profile pic [stretch goal] , and an html section with a cut and paste-able code that will display easily on other sites [stretch goal].
* As a user, I should be able to click an edit profile button from my home page.
* As a user, while on my edit page I should be able to change my about-me profile pic [stretch goal] or delete my user profile.
* As a user, I should be able to log out of the application

#### Service Provider Profile Creation
* As a user, if I have not yet set up my profile I should be directed to my profile creation page when I sign up.
* As a user, while on my profile creation page I should be able to fill in fields for My Name, City of Work, Service Title, short about me section, ect, and a profile picture.

​
#### Text Reviewer User Stories
* As a user I should be able to add textbub to my contacts via one click.
* As a text reviewer, I should be prompted in some way to text a review.  For example there could be a sign at a babershop that reads
 - If You Liked Your Hair Cut from Tom text a review to textbub @tom ... mesaage
 - If You Liked Your Hair Cut from  Linda text a review to textbub @linda ... message  
* As a text reviewer, I should be able to text textbub a review at that handle
* As a text reviewer, after sending a text I should recieve a message, confirming that the review was posted with a link to the service providers home page [stretch].
* As a reviewer I should not be able to text that same service provider again.
​

#### Service Provider Browser User Stroier
* As a service provider seeker, I should be able to scan the site without logging in.
* As a service provider seeker, I should be able to search a service provider by name, city, and service provided title ect.
* As a service provider browser, I should see a list of relevant results pertaining to my search.
* As a service provider browser, I should be able to see all relevant feilds relating to the search in cluding business name, location, phone, email, handle ect.
* As a service provider browser, I should be able to get directions to a business via one click
* As a service provider browser, I should be able to call and email via one click [stretch]
* As a service provider seeker, I should be able to search on a computer or an iphone.

---
​

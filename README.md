# README
https://www.youtube.com/watch?v=VG2WOZx4FVE

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

# ListingRuby
Ruby

# ListingRuby - API
**Routes**
Articles API
```
GET    /api/v1/articles
GET    /api/v1/articles/:id
POST   /api/v1/articles 
PATCH  /api/v1/articles/:id                                                           
PUT    /api/v1/articles/:id 
DELETE /api/v1/articles/:id
```
**Routes**
Users API
```
GET    /api/users/sign_in
POST   /api/users/sign_in(.:format)
DELETE /api/users/sign_out(.:format)
GET    /api/users/password/new(.:format)                        
PATCH  /api/users/password(.:format)                            
PUT    /api/users/password(.:format)                            
POST   /api/users/password(.:format)                            
PATCH  /api/users(.:format)                                     
PUT    /api/users(.:format)                                     
DELETE /api/users(.:format)                                     
POST   /api/users(.:format)                                     

```
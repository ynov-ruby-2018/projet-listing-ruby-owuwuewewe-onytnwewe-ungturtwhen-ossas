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
GET    /api/v1/articles(.:format)                                                           
POST   /api/v1/articles(.:format)                                                           
GET    /api/v1/articles/new(.:format)                                                       
GET    /api/v1/articles/:id/edit(.:format)                                                  
GET    /api/v1/articles/:id(.:format)                                                       
PATCH  /api/v1/articles/:id(.:format)                                                       
PUT    /api/v1/articles/:id(.:format)                                                       
DELETE /api/v1/articles/:id(.:format)                                                       
```
****
**Routes**
Conversation API
```
GET    /api/v1/conversations(.:format)                                                      
POST   /api/v1/conversations(.:format) 
```
****
**Routes**
Messages API
```
GET    /api/v1/conversations/:conversation_id/messages(.:format)                                
POST   /api/v1/conversations/:conversation_id/messages(.:format) 
```
****
**Routes**
Users API
```
GET    /api/v1/users(.:format)                                                              
POST   /api/v1/users(.:format)                                                              
GET    /api/v1/users/new(.:format)                                                          
GET    /api/v1/users/:id/edit(.:format)                                                     
GET    /api/v1/users/:id(.:format)                                                          
PATCH  /api/v1/users/:id(.:format)                                                          
PUT    /api/v1/users/:id(.:format)                                                          
DELETE /api/v1/users/:id(.:format)                                   
```
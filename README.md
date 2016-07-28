# DesignUP 

###Info
A social media website on Rails inspired by Dribble. This was a week project during the Codaisseur development bootcamp. Users can upload pictures and like and comment on them. For this we used Carrierwave, Cloudinary and Devise with CanCan.  

Cool stuf we learned from this project include: 
- Devise and CanCan to define authentication and authorization
- Cloudinary and Carrierwave for uploading and hosting pictures
- Zurb Foundation for styling
- AJAX in Rails


###Team: 
- [Rachel van der Laan](https://github.com/RachelRomee)
- [Ramon Hofmeister](https://github.com/ramonavic)
- [Chiho Liu](https://github.com/Chiholiu)

###Todo: 

- AJAX calls for likes 
- Users can follow eachother

###Setup

First download or clone the package from the Github repository. 
Then do:

```
bundle install
rake db:create
rake db:migrate
rake db:seed
rails s 
```









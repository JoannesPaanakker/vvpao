rails g model Targetaudience name:string
rails g model Registration name:string
rails g model Expertise name:string
rails g controller targetaudiences
rails g controller registrations
rails g controller expertises

rails g model Text name:string text:text

rails g controller texts

rails g model Image name:string filename:string
rails g controller images

rails g model Newsitem title:string content:text imagefilename1:string
rails g controller newsitems
# ROR-GDT-Assessment
Government Digital Transformation Assessment for Junior Developer

The Back-end API for the [GDT-Assessment App](https://github.com/Aaron-RN/REACT-GDT-FrontEnd/tree/v1.0). Holds database info for All Musicians and allows RESTful HTTP requests to obtain and manipulate the Musician data.
The data held in this back-end API is related to a musician table.

## Models
### - LocalMusician
- Has one (1) unique field: **:name**
- Has two (2) other fields: **:age, :active**
- Has string validations required for **:name**
- Has numeric validations required for **:age**
- Has boolean validations required for **:active**

## Controllers
### Musicians Controller
Handles new musician creations  
Parameters accepted: { musician: { :name, :age, :active} }

## Routes
<pre>
Prefix Verb   URI Pattern                                                                       Controller#Action
musicians GET    /musicians(.:format)                                                           musicians#index
musicians POST   /musicians(.:format)                                                           musicians#create
musicians PATCH  /musicians/:id(.:format)                                                       musicians#update
root GET    /                                                                                   musicians#index
</pre>

## Built With

- Ruby - '2.6.3'
- Ruby on Rails '~> 6.0.3', '>= 6.0.3.2'
- PostgreSQL '>= 0.18', '< 2.0'
- Rack-CORS
- RSpec-rails '~> 4.0.0'

### Automated Testing with [RSPEC](https://github.com/rspec/rspec-rails)

* Run `bundle exe rspec` within the terminal console after installing project repository.

## Setting up your own Back-End

### Installation

* Download repository to your local machine, then run `bundle install` and run `rails db:setup`, `rails db:migrate` all within the terminal console.

### Navigate to config/initializers directory

1. Enter the cors.rb file and...
2. On line 10 you will replace ```origins 'https://arn-gdt-assessment.netlify.app'``` with your own custom app's url. *(As you can see I used heroku to host my app)*
3. Close the cors.rb file and...
4. Open the session_store.rb file within the same config/initializers directory and...
5. Similar to what you did in the cors.rb file, on line 5 you will replace ```domain: 'arn-gdt-assessment-api.herokuapp.com'``` with your own custom app's domain.

## Author

👤 **Aaron Rory**

- Github: [@Aaron-RN](https://github.com/Aaron-RN)
- Twitter: [@ARNewbold](https://twitter.com/ARNewbold)
- Linkedin: [Aaron Newbold](https://www.linkedin.com/in/aaron-newbold-1b9233187/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](lic.url) licensed.

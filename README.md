![Title](/Users/jcortespomeo/Desktop/km.png)
## Table of Contents

- [Overview](#overview)
- [Contributors](#contributors)
- [Tools Utilized](#framework)
- [Setup](#setup)
- [Endpoints](#endpoints)

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

### Overview

DESCRIPTION OF APP HERE.
This repository contains our backend Rails app; Checkout the [frontend repository](https://github.com/kick-match/kick-match-fe)


#### Libraries
<p>
  <img src="https://img.shields.io/badge/react-%2320232a.svg?style=for-the-badge&logo=react&logoColor=%2361DAFB" />
  <img src="https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=for-the-badge&logo=rubyonrails&logoColor=white" />
  <img src="https://img.shields.io/badge/-ApolloGraphQL-311C87?style=for-the-badge&logo=apollo-graphql" />
</p>

#### Languages
<p>
  <img src="https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E" />
  <img src="https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white" />
  <img src="https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white" /><br />
  <img src="https://img.shields.io/badge/Ruby-CC0000.svg?&style=for-the-badge&logo=ruby&logoColor=white" />
  <img src="https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=for-the-badge&logo=rubyonrails&logoColor=white" />
  <img src="https://img.shields.io/badge/-GraphQL-E10098?style=for-the-badge&logo=graphql&logoColor=white" />
</p>

#### Tools
<p>
  <img src="https://img.shields.io/badge/Git-F05032.svg?&style=for-the-badge&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=for-the-badge&logo=github&logoColor=white" />
  <img src="https://img.shields.io/badge/Postman-FF6E4F.svg?&style=for-the-badge&logo=postman&logoColor=white" />
  </br>
  <img src="https://img.shields.io/badge/Heroku-430098.svg?&style=for-the-badge&logo=heroku&logoColor=white" />
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=for-the-badge&logo=postgresql&logoColor=white" />
  <img src="https://img.shields.io/badge/CircleCI-FFBC4F.svg?&style=for-the-badge&logo=travis&logoColor=white" />
  <img src="https://img.shields.io/badge/travisci-%232B2F33.svg?style=for-the-badge&logo=travis&logoColor=white" />
</p>

#### Testing
<p>
<img src="https://img.shields.io/badge/-cypress-%23E5E5E5?style=for-the-badge&logo=cypress&logoColor=058a5e" />
<img src="https://img.shields.io/badge/rspec-b81818.svg?&style=for-the-badge&logo=rubygems&logoColor=white" />
</p>


## <ins>Contributors</ins>
### Front End Team
**Andrey Bermudez**
- [Github](https://github.com/Andrey-1992)
- [LinkedIn] ()

**Steven Berg**
- [Github](https://github.com/saberg1)
- [LinkedIn] ()

**William Phelps**
- [Github](https://github.com/williamphelps13)
- [LinkedIn]()

### Back End Team
**Dee Hill**
- [Github](https://github.com/deebot10)
- [LinkedIn] ()

**Joanna Cortes Pomeo**
- [Github](https://github.com/JoannaCoPo)
- [LinkedIn](https://www.linkedin.com/in/joanna-cortes-pomeo-6b1a3aba/)

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

### Setup

1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Set up the database: `rails db:{drop,create,migrate,seed}`

Example wireframes to follow are found [here](www.time.gov) <-- Enter URL for wireframes here

Find the [project spec here](https://mod4.turing.edu/projects/capstone/)

#### [Schema Design](https://dbdiagram.io)

<p align="center">
  <img src=""/>
</p>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

#### Endpoints

##### ```/graphql```
Endpoints use a __`POST`__ method, utilizing GraphQL to perform queries and create mutations of data. Queries must be sent in the __request body__ as shown below.

##### GraphQL Mutations
All arguments displayed below are required.
```
mutation{
  createTalent(input:{
    name: "Test Name",
    age: 13,
    height: "5'1",
    weight: 105,
    primaryPosition: "forward",
    secondaryPosition: "goalie",
    videoUrl: "youtube.com/test",
    zipcode: 80224,
    email: "gooollllll@futbol.com",
    dominantFoot: "left",
    goalsMadeLs: 7,
    verticalJump: 20.5,
    fortyDash: 8.49,
    jugglingRecord: 7,
    talents: "Ball contol and shooting"
  }) {
    talent {
      id,
      name,
      age,
      height,
      weight,
      primaryPosition,
      secondaryPosition,
      videoUrl,
      zipcode,
      email,
      dominantFoot,
      goalsMadeLs,
      verticalJump,
      fortyDash,
      jugglingRecord,
      talents
    }
    errors
  }
}
```

##### GraphQL Queries

#### <ins>Project Configurations</ins>

* Ruby Version
    ```bash
    $ ruby -v
    ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-darwin20]
    ```

* [System Dependencies](https://github.com/Bhjones45/kick-match-be/blob/main/Gemfile)
    ```bash
    $ rails -v
    Rails 5.2.6
    ```

* Database Creation
    ```bash
    $ rails db:{drop,create,migrate,seed}
    Created database 'kick-match-be_development'
    Created database 'kick-match-be_test'
    ```

* How to run the test suite:
    ```bash
    $ bundle exec rspec -fd
    ```

* [Local Deployment](http://localhost:3000), for testing:
    ```bash
    $ rails s
  => Booting Puma
  => Rails 5.2.6 application starting in development
  => Run `rails server -h` for more startup options
  Puma starting in single mode...
  * Version 3.12.6 (ruby 2.7.2-p137), codename: Llamas in Pajamas
  * Min threads: 5, max threads: 5
  * Environment: development
  * Listening on tcp://localhost:3000
  Use Ctrl-C to stop
    ```

* [Heroku Deployment - https://tikiarte-be.herokuapp.com/](https://frozen-waters-94259.herokuapp.com/), for production

#### Future Features
1. ADD ANY GOALS/STETCH TECH WE'D LIKE TO ADD

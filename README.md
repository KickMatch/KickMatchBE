# KickMatch

[![Contributors][contributors-shield]][contributors-url]
[![Issues][issues-shield]][issues-url]
[![Stargazers][stars-shield]][stars-url]
[![Forks][forks-shield]][forks-url]
<img src="" />  


## Table of Contents

- [Overview](#overview)
- [Contributors](#contributors)
- [Tools Utilized](#framework)
- Setup
- Endpoints

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

### Overview

DESCRIPTION OF APP HERE.
This repository contains our backend Rails app; Checkout the [frontend repository](https://github.com/kick-match/kick-match-fe)


#### Framework
<p>
  <img src="https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white" />
</p>

#### Languages
<p>
  <img src="https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white" />
  <img src="https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=flaste&logo=rubyonrails&logoColor=white" />
  <img src="https://img.shields.io/badge/-GraphQL-E10098?style=for-the-badge&logo=graphql&logoColor=white" />
</p>

#### Tools
<p>
  <img src="https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />
  <img src="https://img.shields.io/badge/Postman-FF6E4F.svg?&style=flat&logo=postman&logoColor=white" />
  </br>
  <img src="https://img.shields.io/badge/travisci-%232B2F33.svg?style=for-the-badge&logo=travis&logoColor=white" />
  <img src="https://img.shields.io/badge/CircleCI-FFBC4F.svg?&style=flat&logo=travis&logoColor=white" />
  <img src="https://img.shields.io/badge/Heroku-430098.svg?&style=flaste&logo=heroku&logoColor=white" />
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=flaste&logo=postgresql&logoColor=white" />
</p>

#### Testing
<p>
<img src="https://img.shields.io/badge/-cypress-%23E5E5E5?style=for-the-badge&logo=cypress&logoColor=058a5e" />
  <img src="https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
</p>


### <ins>Contributors</ins>
#### Front End Team
**Andrey Bermudez**
- Github: [Andrey Bermudez]()
- LinkedIn: [Andrey Bermudez]()

**Steven Berg**
- Github: [Steven Berg]()
- LinkedIn: [Steven Berg]()

**William Phelps**
- Github: [William Phelps](https://github.com/leehopper)
- LinkedIn: [William Phelps](https://www.linkedin.com/in/lee-hopper/)

#### Back End Team
**Dee Hill**
- Github: [Dee Hill]()
- LinkedIn: [Dane Brophy]()

**Joanna Cortes Pomeo**
- Github: [Joanna Cortes Pomeo](https://github.com/JoannaCoPo)
- LinkedIn: [Joanna Cortes Pomeo](https://www.linkedin.com/in/joanna-cortes-pomeo-6b1a3aba/)

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/JoannaCoPo/kick-match-be.svg?style=flat
[contributors-url]: https://github.com/JoannaCoPo/kick-match-be/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/JoannaCoPo/kick-match-be.svg?style=flat
[forks-url]: https://github.com/JoannaCoPo/kick-match-be/network/members
[stars-shield]: https://img.shields.io/github/stars/JoannaCoPo/kick-match-be.svg?style=flat
[stars-url]: https://github.com/JoannaCoPo/kick-match-be/stargazers
[issues-shield]: https://img.shields.io/github/issues/JoannaCoPo/kick-match-be.svg?style=flat
[issues-url]: https://github.com/JoannaCoPo/kick-match-be/issues


### Local Setup

1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Set up the database: `rails db:{drop,create,migrate,seed}`
4. Set up [API Access](#project-configurations)

Example wireframes to follow are found [here](www.time.gov) <-- Enter URL for wireframes here

Find the [project spec here](https://mod4.turing.edu/projects/capstone/)

#### [Schema Design](https://dbdiagram.io)

<p align="center">
  <img src=""/>
</p>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

#### Endpoints

[Backend Endpoints]()

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

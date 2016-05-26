# Rails Workshop

## Get started

Clone a repo:

```
git clone https://github.com/Kiza/rails_workshop.git
```

This will clone the entire git repo.

Check the tag list:

```
git tag -l
```

Swith to a specific tag:

```
git checkout tags/<tag id>
```


Install dependencies and setup:

```
gem install bundler
bundle
rake db:migrate
```

Seed database:

```
rake db:seed
```

Run the app:

```
rails s -p $PORT -b $IP
```


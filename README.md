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


Install dependencies and run the app:

```
gem install bundler
bundle
rake db:migrate

rails s -p $PORT -b $IP
```


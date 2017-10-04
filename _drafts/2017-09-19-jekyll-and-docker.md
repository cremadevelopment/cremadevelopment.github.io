# Jekyll and Docker

Is Docker the new Hyde??? Dun Dun Duhhhhhhh

Once you are up and going with docker, the idea might strike you that not having to maintiain Ruby, Jekyll and other things on your machine could free up some time to create a blog, or atleast a github.io site. With all this free time on your hands of course you do, and your head is full of ideas like becoming one of the first bloggers to really dig deep in the investigation of dotnet core 2 before others can fill in the gaps....

## Creating a site

1. Turn on docker. [you know you've seen the docker error when you are excited so you jump into powershell before you started docker].
1. cd to the directory where you store your repos...
1. Say Abra Cadabra while you run this command. [of course replacing <this-site> with the name of your site. e.g. the-awesome-that-is-my-blog.github.io]
```docker run --rm -v ${PWD}:/srv/jekyll -it jekyll/jekyll jekyll new <this-site>```

After a short bit depending on your internet connection and if you have tried this trick before, you will have a folder called <this-site> in the directory that you ran the command in. Don't believe me? Go ahead and `cd <this-site>`. Now if you look around you will see a very bare bones jekyll site.

You can even turn it on and make sure it's functional...

```docker run --rm -v ${PWD}:/srv/jekyll -p 4000:4000 -it jekyll/jekyll jekyll serve```

Navigate to http://localhost:4000 and say _'Wow! This is as easy as pie. Mmmmmm. Pie.....'_

So that was awesome! Cool trick up your sleeve.

## Add Some Awesome Sauce

1. Create a file in your <this-site> directory called **docker-compose.yml**
1. Open that file in your favorite text editor and add the following:
```
version: "3"

services:
  jekyll:
    image: jekyll/jekyll
    command: jekyll serve --watch --force_polling
    ports:
      - 4000:4000
      - 35729:35729
      - 3000:3000
    volumes:
      - .:/srv/jekyll
```
1. Now you can run `docker-compose up` and then visit the site again at http://localhost:4000.
1. To clean up after yourself as all good developers learned from their parents you `docker-compose down` before your done.

> Note: that if docker is up and serving your site, you can just refresh the page and it will show any changes that you have made...
---
layout: post
title: Simply Practical Docker!
tags:
- docker
- docker-compose
- sql
- dotnet
- core
excerpt_separator: <!--more-->
---

I have not been shy about my infatuation with docker. The ability to contain a sandbox for different technologies and projects without polluting my development box gets me simply ecstatic. Portability of environments for developing, testing, client demos, and production has become so easy and faultless.<!--more-->

* Setup and tear down of isolated environments for clients now only takes a moment.
* Testing  multiple server environments, and network failures is possible.
* Eliminate time to configuring developer machines and environments to run projects.

Containers alow me to do these things without the overhead of virtual machine for each client or project. Using a docker image repository, which can also be hosted in a container, preserves the images ready to be turned on when needed. No need to configure a webserver, or make sure the correct version of node is installed, just turn it on.

All this being stated, I have been asked a number of times to give proctical examples of how to use docker in your everyday development. So I have a [GitHub repo](https://github.com/CarBar/DockerDemo) that I put together a while back. It gives the simple tools for a [dotnet core](https://docs.microsoft.com/en-us/dotnet/core/tools/?tabs=netcore2x) web app, and a [sql server](https://www.microsoft.com/en-us/sql-server/sql-server-2017) database. These two things together satisfies most of our quick client projects.

> Therefore I urge you to look at this simple demo => <https://github.com/CarBar/DockerDemo>

Hopefully this will inspire you to containerize all things!

Since I have started playing with docker I have used so many things for development, trying them out, and client demos. All of this in containers without having to install them or configure them on my machine.

* [Redis](https://hub.docker.com/_/redis/)
* [Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html)
* [Gitlab](https://hub.docker.com/r/gitlab/gitlab-ce/)
* [TeamCity](https://hub.docker.com/r/jetbrains/teamcity-server/)
* [Octopus Deploy](https://hub.docker.com/r/octopusdeploy/octopusdeploy/)
* [nginx](https://hub.docker.com/_/nginx/)
* [Jekyll](https://hub.docker.com/r/jekyll/jekyll/)
* [MySQL](https://hub.docker.com/_/mysql/)
* [MongoDB](https://hub.docker.com/_/mongo/)
* [Postgres](https://hub.docker.com/_/postgres/)
* [Node](https://hub.docker.com/_/node/)
* [Docker Registry](https://hub.docker.com/_/registry/)
* [golang](https://hub.docker.com/_/golang/)

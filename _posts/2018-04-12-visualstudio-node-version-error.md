---
layout: post
title: Visual Studio Node Version
tags:
- node
- visualstudio
excerpt_separator: <!--more-->
---

After working in `dotnet core` for quite a while now, I have switched my toolset a bit. The majority of my time is spent in Visual Studio Code, Powershell. Now I have been assigned to work on a project using the full blown `.Net Framework`. Ok, no big deal - I like those tools as well. It will be a little different web project setup but it will be serving an `Angular cli` project out of it so there is much fun to be had. <!--more--> The template we are using is from a third party, and they are using `gulp` tasks to handle the transpiling and management of the `Angular Typescript`. As I read and followed the steps in the documentation to get started, I got an error when running the `dev` task. This task calls a script in the `package.json` file that in turn runs `ng build --watch`. I ran this and got the following error:

```ps
[08:56:40] Starting 'ng-build'...
C:\src\~~myclient~~\node_modules\@angular\cli\models\config\config.js:17
    constructor(_configPath, schema, configJson, fallbacks = []) {
                                                           ^
SyntaxError: Unexpected token =
```

So I busted out the google fu and found this StackOverflow post [getting-error-after-angular-cli-update](https://stackoverflow.com/questions/42160699/getting-error-after-angular-cli-update). Reading the answer of "You need Node version 6.x or higher" made me think for a moment that this was not the same issue. I jumped into Powershell and `node -v` revealing `v9.8.0` and maybe said **Ha, don't tell me I'm out of date!** out loud.

I then got into the project folder in Powershell and ran the `ng build --watch`, and watched as the Angular project built just fine. It took me a second, but then I thought maybe the shell that Visual Studio uses is different from PowerShell. I wasn't quite right, but again using the power of the internet searching for how to update the version of _node_ used in Visual Studio, I found the following on StackOver about how to [update-node-version-in-visual-studio-2017](https://stackoverflow.com/questions/43849585/update-node-version-in-visual-studio-2017).

All that to say we need our `$(PATH)` variable above the `$(DevEnvDir)\Extensions\Microsoft\Web Tools\External` in the `Tools > Options > Projects and Solutions > Web Package Management > External Web Tools` locations of external tools list. This then allows control of your version of tools to be in sync with what you have on your path.
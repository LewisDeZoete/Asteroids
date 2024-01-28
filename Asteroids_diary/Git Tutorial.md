### What is version control?
**Version control is the management of changes to documents, programs and other information stored as computer files.** With version control, <u>which Git provides</u>, we are able to track and recreate every step of our work, as well as give us peace of mind (backups), freedom (exploratory branching) and collaboration (synchronisation).


### Where to start?
There are two aspects of Git we can use for this project, and other projects in the future; the local version of Git for your own machine and the cloud based GitHub for easy collaboration. For these sections, it'll be useful to have a command prompt or powershell window open and ready.
#### Local
1. Go to the [Git for windows download page](https://git-scm.com/download/win) 
2. Get the install (64-bit) .exe
3. Run the .exe file and begin the install
5. Leave things as default for the most part, but the one suggestion I'd make is in the section to Override default branch name for new repos (should have a red `NEW!` symbol) and make sure the name is `main`
6. Finish install and move on to the GitHub section below
#### GitHub
1. Go to [the GitHub website](https://github.com) and create an account (should be pretty straight forward)
2. In a command prompt window, add your username and email to your `.gitconfig`
```
git config --global user.name "Your Name"
git config --global user.email "youremail@gmail.com"
```
3. back on the web, navigate to the [Asteroids project GitHub](https://github.com/LewisDeZoete/Asteroids)
4. Click on the green `<> Code` dropdown and under the HTTPS heading, it should have a link to the GitHub for you to copy (something like `https://github.com/LewisDeZoete/Asteroids.git`)
5. In your command prompt window, navigate to wherever you want the project to live
6. Type `git clone` followed by the GitHub link we just copied
```
git clone https://github.com/LewisDeZoete/Asteroids.git
```
7. This should create a local copy of our project files
	- If you run into problems at the cloning step, this could be down to permissions errors and might just be a google.com moment


### How do we collaborate?
Before we start messing around with each others things, we want to create our own branch. Inside your command prompt window, navigate inside the Asteroids project folder and check which branch you're on:
```
git branch -r
```
You should see something like `origin/main`. Create yourself a new branch to work on, replacing `YOURNAME` with whatever you want to call the branch (eg. `PablosBranch`).
```
git branch YOURNAME
git checkout YOURNAME
```
Again, you'll get some messages back about creating and moving to your new branch, so you can now start working on the project. To backup your changes and push them to the GitHub for other's to look at 
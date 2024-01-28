# Asteroids Godot Project
### Requirements:
- Godot
- Obsidian
- GitHub account


## Git
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
Before we start messing around with each others things, we want to create our own branch. Inside your command prompt window, navigate inside the Asteroids project folder and check which branch you're on and which remote branches exist:
```
git branch -a
```
You should see something like `main... origin/main`. Create yourself a new branch to work on, replacing `YOURNAME` with whatever you want to call the branch (eg. `PablosBranch`).
```
git branch YOURNAME
git checkout YOURNAME
```
Again, you'll get some messages back about creating and moving to your new branch, so you can now start working on the project. 
It's important to backup your changes, you need to add your changes to your local repo, commit them then push to the GitHub.
<u>The cycle of git virtue: work, commit, work, commit, ...</u>
```
git add .
git commit -m "Commit message eg. added new script!"
git push origin YOURNAME
```
The `git add .` command adds all your changes to your next commit.
The `git commit -m "..."` command *commits* those changes to your local git branch. You can change everything inside the quotation marks to give a very short (72 character) description of what changes you made. Now they're saved locally, time to push them to your branch on the GitHub!
The `git push origin YOURNAME` pushes the changes you've made to the GitHub to your branch (use the branch name you made earlier).
Periodically, we'll need to merge our branches to the main branch so we can keep up to date with what each other person is working on, but we'll cross that bridge when we come to it!


### Learn more?
Git is very complex, but so many people use it that if you run into a problem, someone else on the internet has had the same issue. If you want a deeper rundown of Git, see the `git-intro.ipynb` for more.


## Assets
GitHub doesn't provide unlimited storage, so it'll be easier to keep assets on Google Drive and just let eachother know if we've added more.
[Follow this link to the Google Drive](https://drive.google.com/drive/folders/1jGch2o3lQNIh7PWKLNI5sTQ6dMmGRlB6?usp=drive_link) where all the game assets are stored. I called the folder sprites, just drop it into the main project folder so the structure looks like:

```
Project_folder
 |
 |--Asteroids_diary
 |
 |--Scenes
 |
 |--Scripts
 |
 |--Sprites
```

### Obsidian
I'm assuming you've got Obsidian downloaded and installed on your computer. If you've never opened a vault before, Obsidian should open to a prompt to create or open a vault. If you *have* opened a vault vefore, you just need to navigate to the bottom left corner of the screen to the little keyhole icon and click that.

Select the option to `Open folder as vault`, then navigate into the project folder and simply select the `Asteroids_diary` folder. 

You should now see the few notes I've already gotten started on in the folder panel on the left hand side in Obsidian. If not, send me a message. I'd recommend toying around with this interface, it's pretty easy to navigate but markdown takes a tiny bit of getting used to. If you want to make a document look prettier, someone on the internet has almost certainly tried to do the same thing; so Google it!

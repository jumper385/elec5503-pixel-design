# ELEC5503 Pixel Design
## Quick Start
Download the repository by clicking the Code Button Dropdown and downloading the zip file
![image](https://github.com/user-attachments/assets/65547dc8-2355-47b5-a34c-5ca444e15d3b)

Unzip the file. Then rename the folder to elec5503-pixel-design
```bash
cd
unzip Downloads/elec5503-pixel-design-main -d Downloads
mv Downloads/elec5503-pixel-design-main Downloads/elec5503-pixel-design
```

`cd` into the folder and, with terminal run the `./remote_setup.sh`
```bash
cd Downloads/elec5503-pixel-design
./remote_setup.sh
```
This will prompt you to enter your username and password to login to the server. At this point, it is setting up ssh keys. 
Once the correct creditnials are entered, you should be ssh'd into the server.

you can now upload and download to the server
To upload, run 
```bash
./uploader.sh upload
```
To download, run 
```bash
./uploader.sh download
```

when you're happy with your changes, you'll need to ssh into the server and run the git commands to push to remote in a version controlled fashion
to ssh, run `./remote_setup.sh` again. you should be met with the screen immediately.

`cd elec5503-pixel-design` to enter the target folder

run `git add ./target/files/to/add`. if you want to find the files that ahve been changed, run `git status`. 

once you've added the files you want, run `git commit -m "a breif note on changes"` Once commited, you can view the the rest of the history with `git log --graph`. Additionally, you can scroll aroudn the history by pressing `j` (to move down) and `k` (to move up).

when the commit is done, you will need to push to the server. run `git push` to do this. It should upload immediately.

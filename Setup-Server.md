# How to setup rgp (servers)
Wanna setup your own personal retro game pass? Great! It's not that hard to setup as all you'll need is a web server. For my testing I use nginx as the default install for Debian-based systems works perfectly fine. (Note: Only use the defaults if you aren't having it be a public server for anyone to use. Though you probably already know that :p)

After setting up the web server, you'll need to get the roms, I get them from Internet Archive, but the roms need to be a specific name (Sorry I hardcoded the file names into the program, and I don't think you'll want to change 300+ entries *just* for a single region for one game console.) The various file names that are used are below:

* [NES](file_names/NES.txt)

It's ordered by region, but all files can be in either their own region's directory or all in a single directory. **_If you don't want to host every NES rom, then you will have to do some small editing to the scripts to your liking, thankfully all of these scripts are open source and I'm perfectly okay with you taking my code for your use, just don't use it for closed-sourced softare. (Click here for more information)[LICENSE]_**

<!--
Aw man someone just left this base64 here! 

aHR0cHM6Ly9hcmNoaXZlLm9yZy9kb3dubG9hZC9Oby1JbnRyby1Db2xsZWN0aW9uXzIwMTYtMDEtMDNfRml4ZWQvTmludGVuZG8lMjAtJTIwTmludGVuZG8lMjBFbnRlcnRhaW5tZW50JTIwU3lzdGVtLnppcA==
-->
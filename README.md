# WARNING! THIS IS A FULLY NEW APP, PLEASE EXPECT BUGS!
This app is for all linux operating systems that IS x86-64 USUALLY its intel or AMD if it doesnt work pls make an issue and we will run like 5 lamborginis to try and fix this.
Go [here](https://github.com/JoVe13/emoProxy/blob/main/README.md?plain=1#L219) for how to setup the linux-wifi-hotspot package with the correct settings.

---

# emoProxy
The Proxy but then in an AppImage! It has everything from the proxy in it so its a lot faster to setup.

---



Proxy link: https://github.com/emo-libre
# How to install
1. go to the release tab and download the latest version (emoproxy_86x-64x.appimage) and download the fuse3 installer for your OS.
2. **Install FUSE** (or double click the file for opening without install)
# Install FUSE on Linux
FUSE means Filesystem in Userspace. It allows non root users to create and mount their own filesystems.

Double click the downloaded .sh file for your OS and wait until it's installed. For manual instalation:

<details>
  <summary>Manual installation</summary>

# BETTER INSTALL GUIDE BY SUDOED_MASTER :D
This guide shows how to install FUSE on Debian based, Arch based, and Fedora based distributions.

---

## Check if FUSE is already installed

Run:

```
fusermount --version
```

or

```
which fusermount3
```

If it prints a version, FUSE is already installed.

---

<details>
  <summary>Debian and Ubuntu</summary>
 Works for Debian, Ubuntu, Linux Mint, Pop OS and other Debian based systems.

Update package list:

```
sudo apt update
```

Install FUSE 3:

```
sudo apt install fuse3
```

Optional development headers:

```
sudo apt install libfuse3-dev
```

After installation, verify:

```
fusermount3 --version
```

---

</details>

<details>
  <summary>Arch Linux and Manjaro</summary>

Update system:

```
sudo pacman -Syu
```

Install FUSE 3:

```
sudo pacman -S fuse3
```

Optional development package:

```
sudo pacman -S fuse3
```

Verify installation:

```
fusermount3 --version
```

---

</details>

<details>
  <summary>Fedora</summary>

Update system:

```
sudo dnf update
```

Install FUSE 3:

```
sudo dnf install fuse3
```

Development package:
,/
```
sudo dnf install fuse3-devel
```

Verify:

```
fusermount3 --version
```

---

</details>
</details>

## Add user to fuse group if needed (not recomended if it allready works !!)

Some systems require your user to be in the fuse group.

Check groups:

```
groups
```

If fuse is not listed, add yourself:

```
sudo usermod -aG fuse $USER
```

Log out and log back in.

---

## Load FUSE module manually if required (not recomended if it allredy works !!)

```
sudo modprobe fuse
```

Check if loaded:

```
lsmod | grep fuse
```

---

3) CHMOD - a way to allow your system to trust and execute the appimage
 do :-
```
chmod +x emoProxy-x86_64.AppImage
```
4) **to add the app to the taskbar and Application Menu**
there are two options
 
 a) use  Gearlever a flatpak app that basically is a gui to add your apps to your app library and manage them easier with them all being in one gui
Its an external app YOU NEED FUSE -- xyphen

 b) use our script dcownload both the appimage and script from the release :D
to do so :-
keep the appimage and execute this is the same directory itll also chmod it so you dont need to YOU NEED FUSE :-
```
chmod +x emoProxy-x86_64.AppImage && ./emoProxy-x86_64.AppImage --appimage-extract && cd squashfs-root && rm -rf ~/emoproxy-ea && rm -rf ~/emoproxy-ea/. && mkdir -p ~/emoproxy-ea && cp -r * ~/emoproxy-ea && rm -rf squashfs-root && cd ~/emoproxy-ea && chmod +x AppRun && echo -e "[Desktop Entry]\nType=Application\nName=emoproxy-ea\nExec=~/emoproxy-ea/AppRun\nIcon=~/emoproxy-ea/Icon.png" > eouoep.desktop && desktop-file-install --dir=~/.local/share/applications eouoep.desktop && echo -e 'All install process done for the AppImage thank you for trying this out, script made by Sudoed_Master and it definitely didn’t take an hour to write :D' && cd ~
```

if the app doesnt launch change the ~/ with this template be sure to put your username in

/home/yourusername/emoproxy-ea/AppRun

we use ~ to represent /home/yourusername/ so ~/ will be /home/yourusername/ itll expand :D

---

# Using the app
1. Make a hotspot. go [here](https://github.com/JoVe13/emoProxy/blob/main/README.md?plain=1#L219) for an easy tutorial on how to use the linux-wifi-hotspot app with the correct settings.
2. Open the app and press "Install dependencies". At the right you will see the logs, check if everything goes to plan. Please go to [this part](https://github.com/JoVe13/emoProxy/blob/main/README.md?plain=1#L260) if something goes wrong in this step.
3. Clone the project by pressing its button. If it says the direcotory already exists, it can be you pressed the button before. To be safe, click the "Delete Repo" button and the click the "Clone project" button again.
4. Press "Start Proxy". At the right it will say it started. If it stops (most of the time it will give an exit code), then click first "Stop All" and then "Start Proxy" again.
5. Press "Start Docker app". It will start docker.If it gives the error that the containers already exist with the same name, press the "Del Containers" button first and then press the docker button again.
6. Now its running! Check the right side log to see the things coming in. Press "Stop All" to stop the proxy.

---

# SSL keys (with openssl)
This app will create ssl certs and keys with openssl after pressing the "Clone project" button. They are used for communication with your emo robot.

---

# Making an hotspot with linux-wifi-hotspot app
1. Installing
<details>
  <summary>Debian based</summary>
  
```
sudo add-apt-repository ppa:lakinduakash/lwh
sudo apt update
sudo apt install linux-wifi-hotspot
```
</details>
<details>
  <summary>Arch based</summary>
(I am using for this example yay, but you can use what every package installer)
  
```
yay -S linux-wifi-hotspot
```
</details>
<details>
  <summary>Fedora based</summary>
  
```
sudo dnf copr enable zinix01/linux-wifi-hotspot
sudo dnf install linux-wifi-hotspot
```
</details>
2. Open the app. (Type in the search bar Hotspot, you will see it then)
3. Change the settings:
SSID = What ever you want, example: EMOProxy, MyHotspot etc.
Password = Again what ever you want, example: 12345678, MyHotspot, or press "Open" for no password.
Wifi interface = wlan0, wla0, wlan1, wla1, etc. (the one you get wifi from)
Internet interface = wlan0, wlo0, wlan1, wlo1, etc. (the one you want to use your for your hotspot, this can be the same as the wifi interface if it supports it)
Open de tab advanced:
Frequency band = 2.4 Ghz
Gateway = 192.168.12.1 (or your hotspot IP if it's diffrent)
Channel = Your current channel from your wifi (you can get it by running ```iw dev | grep -E 'Interface|channel```)

# Errors you (could) get
1. ### ```ap0``` doesnt exist
   Make sure you started your hotspot! If the hotspot is running but it still gives this error, go to ```{applocation}/emoProxy/dnsmasq.conf``` and change interface=ap0 to your hotspot interface.
2. ### One (or more) of the dependecies wont download
   Make sure these packages are downloaded:
   1. git
   2. docker
   3. docker compose plugin
   4. openssl
   Download the ones that wont download manualy.
3. ### Directory already exists
   Press the "Delete Repo" button and then the "Clone project" button again. This will redownload the proxy.
4. ### Proxy stops (most of the time with a exit code)
   Press the "Stop All" button and then the "Start Proxy" button again. This will restart the proxy, even if it was already running.
5. ### Docker is already running
   Press the "Stop All" button and then the "Start Docker app" button again. This will stop all docker proceses and start the correct ones again.
6. ### Docker containers already exist
   Press the "Del Containers" button and then the "Start Docker app" button again. After this the docker containers will be re-downloaded again.

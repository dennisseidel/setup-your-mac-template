# Workstation Setup

This project automates the process of setting up a new [company-name] machine using a simple [Bash](https://www.gnu.org/software/bash/) script.

## Goals

The primary goal of this project is to give people a simple script they can run to make their machine a bit more useful and standard for working on [company-name] projects.

 * A bash script is easy for users to edit locally on-the-fly for small temporary tweaks
 * Everything is in one repository
 * The project name is informative
 * Keep it easy to fork and customize
 * It has very limited requirements: git, bash and Ruby are all available on macOS by default

## Anti-goals

This project does not aim to do everything. Some examples:

 * We don't install everything that your project needs. These scripts should only install generally useful things, and prefer running quickly over being complete.
 * We avoid setting up and maintaining overly-custom configurations. When there is already a tool that will get us something in a conventional manner, such as [bash-it](https://github.com/Bash-it/bash-it), we prefer to use it instead of doing things ourselves.

**Warning: the automation script is currently aggressive about what it does and will overwrite vim configurations, bash-it configurations, etc.**

## Getting Started

- Run the latest version of macOS, 
    unless you have a specific reason not to
- These scripts might work on previous versions, but are maintained with only the latest macOS in mind
- If you are not on High Sierra, you need to install the latest version of [Xcode](https://developer.apple.com/xcode/)
- On High Sierra, once you have used git (below), you will have installed the command line developer tools
- Sign into your apple appstore account (this is required for mas cli).

Open up Terminal.app and run the following commands:

```sh
mkdir -p ~/workspace
cd ~/workspace
git clone https://github.com/dennisseidel/workstation.git
cd workstation
```


### Dennis Setup 

```sh 
./setup.sh work architecture designer docker kubernetes java node python security infrastructure optional
```

opt-in keywords:
* `work`: includes some tools sepecific to my current employer
* `architecture`: includes some tools like draw.io
* `c`: tools for c development
* `designer`: tools for design & video recording
* `docker`: tools for docker
* `kubernetes`: tools for kubernetes based development
* `golang`: tools for golang development
* `ios`: tool for ios development
* `java`: install java
* `java-tools`: tools for java development
* `node`: tools for typescript, nodejs, javascript
* `optional`: private (dennis's) software
* `python`: tools for python development
* `ruby`: tools for ruby development
* `security`: security tools 
* `infrastructure`: tools for infrastucture development

### Engineering Machine

If you're setting up an engineering machine choose which languages to install:

```sh
# For Labs developers (remove unnecessary languages when running command)
./setup.sh java java-tools ruby node golang python docker

# For Data developers
./setup.sh c golang java docker

# For .net
./setup.sh dotnet
```

The list of Engineering applications is found in: [applications-common.sh](https://github.com/dennisseidel/workstation/blob/master/scripts/common/applications-common.sh)

### Designer Machine

If you're setting up a design machine run the following:

```sh
./setup.sh designer
```

In addition to the Engineering applications, this script also installs the list of Design applications found in: [applications-designer.sh](https://github.com/dennisseidel/workstation/blob/master/scripts/opt-in/designer.sh)

### XP Workshop

If you're setting up a machine for the XP workshop run the following:

```sh
./setup.sh java node
```

## Analytics

The tool will send anonymous user data to our Google Analytics account, so we can see what command line arguments are popular.  You can disable this:
```
# Remove unnecessary languages when running command
SKIP_ANALYTICS=1 ./setup.sh java ruby node golang c docker
```
This will also disable brew's [data collection](https://github.com/Homebrew/brew/blob/master/docs/Analytics.md).

## Having problems?

If you're having problems using the setup script, please let us know by [opening an issue](https://github.com/dennisseidel/workstation/issues/new).

If you see errors from `brew`, try running `brew doctor` and include the diagnostic output in your issue submission.

## Customizing

If you'd like to customize this project for a project's use:

- Fork the project
- Edit the shells scripts to your liking
- Profit

## Frequently Asked Questions

### Is it okay to run `./designer.sh` command again?

Yes. The script does not reinstall apps that are already on the machine.

## Credits

The script is based on [Pivotal's workstation setup](https://github.com/pivotal/workstation-setup).

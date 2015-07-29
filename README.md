Powershell New-ADUser Creation Script
=========

Writen by [Zachary Milot] (http://www.zdmilot.com/), with help from [William Stevens] (https://github.com/wastevensv) 

Requirements
------------

The following is required to run the script:

|               Prerequisite                                                                                                                         |               Description                         |
|----------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------|
|[Windows Server](http://www.microsoft.com/en-us/server-cloud/products/windows-server-2012-r2/)                                                      | Have the ability to run at least PowerShell 2.0   |
|[PowerShell 2.0 or Greater](https://www.microsoft.com/en-us/download/details.aspx?id=40855)                                                         | Will run on PowerShell 2.0, but works best on 3.0 |
|[ActiveDirectory Module](http://blogs.msdn.com/b/rkramesh/archive/2012/01/17/how-to-add-active-directory-module-in-powershell-in-windows-7.aspx)    | Comes with Windows Server                         |

Quick Start
-----------

Getting started with the New-ADUser Creation Script is fast and easy once you
have the prerequisites meet. Here are the steps:

* Find the directory of the script
* right click the script and click run with PowerShell
* Then follow all of the prompts soliciting you for input

If you see errors, make sure to check the part of the code that the error directs you to in order to fix the issue.

Coding Breakdown
--------------------

The quickstart above gives a glimpse into the gGRC development environment.
It's worth noting where there is automation in gGRC, and where there isn't.
Often the lack of automation support for a step is intentional. Let's explore
each step in detail.

### Git Submodules in gGRC

The lack of automation for this step is intentional. First, it must be done in
the host operating system, not the Vagrant virtual machine. Second, performing
this step informs the new gGRC developer that there are Git submodules to be
concerned about, leading to the second step:

### Ansible

gGRC-Core provides both a `Vagrantfile` and an Ansible playbook to make
standing up a development environment simple and repeatable thanks to the magic
of Vagrant and Ansible. Vagrant enables developers to use a consistent and
shared VM configuration to perform application testing while allowing
developers to use the source code editing environment of their choice.

### Vagrant

The application is run in a virtual machine environment that can be repeatably,
consistently, and reliably constructed thanks to Vagrant. In order to use
Vagrant to create and manage the development virtual machine environment, it
must first be created by issuing the following command from the project
directory:

#### Reprovisioning a Vagrant VM

There are several ways to update the provisioning of a Vagrant VM when changes
have been made to the cookbooks or other dependency management mechanisms in
gGRC.

##### Provision a running Vagrant VM

To run provisioning on a running Vagrant VM, simply run the following in the
project directory:

##### Provisioning a halted Vagrant VM

If you have halted your Vagrant VM via `vagrant halt`, simply `vagrant up`
in the project directory to have provisioning run and update your development
environment.

##### Clean Slate Provisioning

To create a clean slate environment in your Vagrant VM you can either reload or
recreate the environment. To reload the environment issue the following command
in the project directory:


### Compiling Sass Templates

Since gGRC uses Sass for CSS templating, the templates need to be compiled.
This has been automated via a script available in $PATH in the virtual
machine:

### Compiling Assets

For other asset bundling required, there is the following command:


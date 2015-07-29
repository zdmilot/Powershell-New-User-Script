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
* Right click the script and click run with PowerShell
* Then follow all of the prompts soliciting you for input

If you see errors, make sure to check the part of the code that the error directs you to in order to fix the issue.

Coding Breakdown
--------------------

The breakdown of the code below will give you a glimpse of what the script does.

### Last Name Field

This solicits a user to define a single variable $First which turns into mutable variables inside of a loop, and checks if it contains a
Jr. of jr and it makes a couple of copies of the variable if it does. The copies of the variable
include $Last, which is the user imputed data but is later changed to just the last name without the
Jr; $Last1 which contains Jr.; $Last2 that contains just the root name without Jr. (similar to $Last, but defined first);
$LastE, the last name with Jr connected to the name for the email address; and lastly $LastD, which is the display name
including Jr.

The script also checks if the last name contains a Mc or an O' like McDonanalds or O'Riley. This does simmilar things to
the Jr. correcting code does, but on a smaller scale, because they are a part of the last name, and not something that has
to be in one (ie display name and email) but not the other (ie last name).

This loop contains <b>NO</b> error correction, only separation for certain parts of the last name.

### First Name Field

This solicits a user to define the variable $First.

This loop contains <b>NO</b> error correction, and no separation for different parts of the name.
It does however contain auto capitalization, but that is it (basically WYSIWYG)

### Middle Initial Field

This solicits the user to define the variable $MiddleI

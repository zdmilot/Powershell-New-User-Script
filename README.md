PowerShell New-ADUser Creation Script
=========

Written by [Zachary Milot] (http://www.zdmilot.com/), with help from [William Stevens] (https://github.com/wastevensv) 

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

Script Breakdown
--------------------

The breakdown below will give you a glimpse of what the script does.



###User Solicited Input

##### &#8226;Last Name Field

This solicits a user to define a single variable $First which turns into mutable variables inside of a loop, and checks if it contains a
Jr. of jr and it makes a couple of copies of the variable if it does. The copies of the variable
include $Last, which is the user imputed data but is later changed to just the last name without the
Jr; $Last1 which contains Jr.; $Last2 that contains just the root name without Jr. (similar to $Last, but defined first);
$LastE, the last name with Jr connected to the name for the email address; and lastly $LastD, which is the display name
including Jr.

The script also checks if the last name contains a Mc or an O' like McDonanalds or O'Riley. This does similar things to
the Jr. correcting code does, but on a smaller scale, because they are a part of the last name, and not something that has
to be in one (ie display name and email) but not the other (ie last name).

This loop contains <b>NO</b> error correction, only separation for certain parts of the last name.

##### &#8226;First Name Field

This solicits a user to define the variable $First.

This loop contains <b>NO</b> error correction, and no separation for different parts of the name.
It does however contain auto capitalization, but that is it (basically WYSIWYG).

##### &#8226;Middle Initial Field

This solicits the user to define the variable $MiddleI.

This loop contains <b>NO</b> error correction, but does only accept single character responses, with auto capitalization.

##### &#8226;Department Field [CHANGED IF DEPT. GET ADDED OR CHANGED]

This solicits the user to define the variable $Dept.

This loop <b>CONTAINS</b> error correction for abbreviations of a department.

##### &#8226;Job Title Field

This solicits the user to define the variable $Title.

This loop contains <b>NO</b> error correction, but has auto capitalization.

##### &#8226;Service Center Location Field

This solicits the user to define the variable $Local, which turns into mutable variables like $Local, which could be the same
variable before, but it would be the abbreviation of a state like MA; $Address, which is the street address for that service center;
$ServCity, which defines the service center's city; $Zip which defines the Zip code of the service center; $PhoneArea, which defines
the first six characters of the phone number of the service center; $DeExt which defined the last four digits of the main telephone
number for that service center; and $Fax which defines the fax number for the service center.

This loop <b>CONTAINS</b> error correction for input of a city or a state (sometimes a user must input a specific city if there are two in one state).

##### &#8226;Extension Field (OPTIONAL and COMMENED OUT)
 
This solicits the user to define the variable $Ext. This field is commented out, because normally a user of this script would not be
able to provide an extension for a user, but it is here if needed in the future. This field only accepts four characters and would
replace the last four digits of the phone number, previously defined in the service center location field as $DeExt.

This loop contains <b>NO</b> error correction, but only accepts four characters.

##### &#8226;Mobile Phone Field

This solicits the user to define the variable $MobilePh. This field is for users to be able to add a mobile phone number to a user’s profile if they have it.

This loop contains <b>NO</b> error correction for the data entered into the field, but only accepts 10 characters.

##### &#8226;Company Field

This solicits the user to define the variable $Company.

This loop <b>CONTAINS</b> error correction for input of an abbreviation of a company.



###Background User Creation and Solicitation for Confirmation

##### &#8226;User Displayed All Inputs to be Used to Create Account

After all the prompts have been properly answered the user is shown the final variables.

##### &#8226;Changing The Phone Numbers To Domain Norms

The next part of the script will take the mobile phone number, phone number, and fax, and remove the parentheses and dashes, and insert . like
from (508) 966-6000 to 508.966.6000

##### &#8226;Conformation of Correct Information

At this point the user will have a "yes or no"" prompt that will ask them if all of the information is correct.

If they state that yes, it is correct: The loop will break and the information will be entered into following Cmdlets
If they state that no, it is not correct: The loop will start over again

##### If Yes, Lets Move On: 
##### &#8226;



# autosetup-virtual-desktop

> Keep your batch file in `%homedrive%%homepath%\start menu\programs\startup\` to start your PC with your favorite applications within virtual desktops everytime!

Command set to utilize a hacky way to start virtual desktops, with user-defined programs, using [Vdesk][1].

_created in reference to [this][100] issue_

![Automatically create 3 virtual-desktops and, start applications][2]
> _fig: Automatically create 3 virtual-desktops and, start applications (can be configured to do so much more)_

### Pre-requisites

* The [Vdesk][1] application
* Correctly set-up environment variables

### Usage

To be noted while configuring your own
* For browser/browser-based applications (Chrome, Firefox, Slack Desktop, Skype) wrap in `ping -n 2 127.0.0.1 > nul` to implement a necessary _1 second_ wait time.
* Do __not__ use the `noswitch:true` attribute for browser/browser-based applications.
* Targeting multi-version applications that exist side-by-side on the same system is achieved with a shortcut file, when the `%Path%` variable is mapped out. Starting such a file exists in a different context so, context should be forwarded with `start /i` and waited on with the `/w` switch.
* Keep your batch file in `%homedrive%%homepath%\start menu\programs\startup\` to start your PC with your favorite applications everytime!

### Script

```
start /i /w vdesk create:3
ping -n 2 127.0.0.1 > nul
start /i /w vdesk on:1 run:slack
ping -n 2 127.0.0.1 > nul
start /i /w vdesk on:2 run:devenv2015
start /i /w vdesk noswitch:true on:3 run:sublime_text
exit
```

> Download: This is also available as a [file][102]

### Download
* [Script][102]
* [Complete Project][103]

### License

Standard [MIT License][101].

[1]: https://github.com/eksime/VDesk
[2]: img/vdesk.png "Automatically create 3 virtual-desktops and, start applications"
[100]: https://github.com/eksime/VDesk/issues/42
[101]: https://github.com/siddhantrimal/autosetup-virtual-desktop/blob/master/LICENSE
[102]: https://github.com/siddhantrimal/autosetup-virtual-desktop/blob/master/loadVdesk.bat
[103]: https://codeload.github.com/siddhantrimal/autosetup-virtual-desktop/zip/master

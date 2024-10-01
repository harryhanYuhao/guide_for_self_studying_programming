# Choosing Operating System

I will convince you in this chapter to choose Linux for coding, Windows for playing games, and MacOS for donating money to Apple.

Let us investigate the difference between these OS.

<details>
<summary>Skip this chapter?</summary>

This chapter presents many lesser known facts about Windows, MacOS, and Linux distributions to help you choose a OS for coding. 

If you have already set up your mind to use Linux, go to [Let There be Linux](../let_there_be_linux/let_there_be_linux.md).

If you do not plan to use Linux, I strongly recommend you to try, and you will likely to benefit from reading this chapter.

If you have decided to skip Linux, go to [Let's Write Code](../lets_write_code/chapter_summary.md).

</details>


## Windows

Windows is a widely available operating system developed by Microsoft. 
It is shipped with almost most software a user may need, including a desktop environment, a C/C++ compiler with libraries, and developer suite (Visual Studio Code). 
This makes it ready to use out of the box.
Windows is also compatible with almost any software, including most videos games.

Windows, contrary to common believe, is **not** free. 
It costs around 100 GBP. 
When purchasing a computer with Windows preinstalled, the price of Windows is included in the price of the computer.

The important **_drawback_** is that
Microsoft has the complete control of a Windows system instead of the users, and it often uses its unchecked rights for abuse.

There are many controversies, but here are a few facts:
 
1. Microsoft's privacy statement explicitly states that it will collect your personal data and share them with third-parties organisations. It does not say what data is collected, but a previous statement says it will collect personal information including password and browsing histories.
[^Sharing Data]
1. Microsoft's softwares explicitly exploits user data. For example, Microsoft Recall, launched in June 2024, is a software service that helps user find what they have done on the computer previously. 
Recall works by taking the snapshots of the computer periodically and process them with copilot. Any other programs that can take a computer's screenshot and share it through the internet without user's permission is called a spyware. [^Microsoft Recall]

In conclusion, Microsoft have total power over Windows, not the user. This is a big problem for learning to code.

### User Experience

Here are the advantage of Windows:

1. It is likely preinstalled on most computers;
1. it is a stable OS and almost any software you can think of can run on it;
1. Microsoft's services, including OneDrive, Gaming Service, Copilot, may be helpful.

Here are the disadvantages: 
1. Windows may force a system update, or keeping popping up remainders. User can not turn off the reminders;
1. Many built in software can not be uninstalled, including Microsoft edge[^edge], copilot, etc. A software that can not be uninstalled is called a malware;
1. Windows has many built in advertisement that can not be removed;
1. There is not a official repository of Windows software. (Mac also does not have it, but most Linux ditributions do.) To install a software on Windows, one have to search on internet and find the most plausible one. 
It is possible that an hacked or imposter software is installed. This is not only an inconvenience, but also a severe security concern. [^hacked software]
1. Windows is a bulky software that takes unreasonable amount of resources. 
1. Some Windows App may be slow for no reasons, and user can do nothing about it. 

Once booting up Windows usually will take 7 GB of RAM and around 100 GB of disk space. 
As Windows is not open-source, users can not know what is using these resources. 
In comparison, a fully funcitonal, ready to use Linux distribution with full graphical interface may only need 2 GB of RAM and 20 GB of disk space.

### Coding Experience 

The overall coding experience on Windows is mediocre. 
Reasons are: 

1. Windows is not designed for programmers but for ordinary users and gamers.[^not for programmer] 
1. Microsoft forces every programmer to use the Windows developing suites (Visual Studio Code).
There is no alternative to it, and every serious programmer need to use it. 
The problem is that the developer suites are not open-sourced. This means a programmer can not view, edit, and learn from the source code, and, if something in the programmer suite goes wrong (which often takes place), the programmer can do nothing except waiting for Microsoft to fix it. 
Many also criticise Visual Studio Code is badly made: it runs slowly, took many CPU and RAM resources, and has poor user interface.
1. Many programming tools are not available, or can not be used conveniently, on Windows. Examples are neovim, tmux, fish, etc.
1. There is no official package manager.

That being said, most game are developed on Windows, as Windows has the best compatibility support for most gaming development tools.

## MacOS

MacOS is POSIX compliant Unix system developed by Apple. 
It is only available on Apple computers. 
Many consumer appraise MacOS for its stability, beautiful apperance, and convenient interaction with other Apple devices. 

Similar to Windows, Apple has the full control of MacOS, and users do not. 
Apple also seems to abuse its unchecked rights:

1. Apple voluntarily stopped the support for OpenGL and Vulkan to promote Metal, a graphical framework created by Apple. This makes many AAA games not functional on MacOS.
1. Apple has secretly underclocked older devices (making them slower) without notifying users. 
Many suspected Apple did it to encourage consumers to buy new Apple products. Apple refuted this statement but agreed to pay 113 million. [^Battery Gate]

### User Experience

Apple's product is famous for its beautiful appearance and animations. 
Interaction between Apple's device are also widely appraised. Apart from these, however, Apples's products are poor (and expensive):

1. MacOS has serious compatibility issues. Many software can not run on MacOS, including most of the games and many developer tools. Some softwares refuses to offer MacOS support, some software's support was deliberately undermined by Apple;
1. Purchasing applications through Apple's App Store costs more, as Apple takes 30% of any purchase.
1. MacOS consumes a lot of RAM and disk space. A brandnew installation of MacOS takes likely more than 40 GB of disk and 4 GB of RAM.

Overall, MacOS is like Windows but created by Apple.

### Coding Experience

Mac's coding experience is poor:

1. The new Mac uses Apple's M series chips, which, although fast and efficient, have dropped all legacy support. This make many programming tool non-compatible with MacOS, and there is no way to fix them, as Apple's M series chip design is proprietory.
1. Any series programming on Apple requires Xcode, which is a developer's suite like Visual Studio Code. XCode is poorly made, runs very slowly, buggy, occupying over 20 GB, and hard to use. There is no other alternatives.
1. Apple promoted programming languages and libraries made by Apple and stopped supports for their competitors. 
This is especially bad for programming learners.
1. Developing and distributing a MacOS software requires specific permission from Apple, which would costs thousands of US dollars;
1. There is no official package manager.

In conclusion, programming experience on 
## Linux

### Short History

Linux is a free and open-source kernel developed by the community. 
Linux kernel was first developed by Linus Torvalds in the 1990s as a free alternative to the expensive Unix systems.
At the same time Richard Stallman and Free Software Fundation has developed free alternatives of other parts of an operating system, but failed to create a functional kernel. 

As a result, people created GNU/Linux[^GNU_Linux] operating system by combining the Linux kernel and GNU softwares, which has quickly gained popularity among open-source enthusiasts.

In the early days of Linux, most contributers are open-source enthusiasts working for free. 
As the project became more popular, the Linux Fundation was established in 2000 to support Linux development.
Since then, many coorporations, including Google, Microsoft, Huawei, etc, have been the sponsors for the project. Many Linux maintainers have become full-time programmers of these companies (The companies are paying them full time to work on Linux.)

As of 2024, Linus Torvalds still leads the Linux development.

### Linux distribution

Linux distribution is an operating system built on the Linux kernel bundled with various system and application softwares. 

There are many free and open-source Linux distributions. The most famous ones are Debian, Ubuntu, RedHat, Fedora, Arch, Manjaro, CentOS, PureOS, etc.
Most of these distributions are built by different group of volunteers and open-source enthusiasts. 

There are very few computers sold with Linux preinstalled. 
To use Linux, one has to buy a non-Apple computer and install the desired distribution on his own. See [obtaining Linux](../let_there_be_Linux/obtaining_Linux.md).

As Linux distributions are free and open source, a user is able to modify his system, including the kernel and desktop environment, in any way he fancies. 
This makes Linux systems very different from each other.

One of the most significant difference are the amount personal configurations required.
Arch distributes only the most essential softwares without a desktop environment. 
In comparison, Ubuntu and Manjaro are preconfigured and can work out of box.

### User Experience

Different Linux distributions will lead to different user experience. This could be Linux's greatest advantage: you may choose the distribution that fit your need. 

It is a misconception that Linux is hard to use and every Linux user has to use only the command line. 

Many modern Linux distribution, including Ubuntu, Manjaor, and Linux Mint, focuse on user experience. 
Using them is similar to use Windows or MacOS: everything will simply work, and all can be done by using a mouse to click the GUI.

### The Coding Experience 

Linux distributions are particularly suitable for coding: 

1. They are made by developers for developers, not for marketing or for sales.
    Almost every programming library and tool can run on Linux. 
    Many programming utility tools that can boost your coding productivity are hard to find on Windows and MacOS, but are readily available on Linux. 
    Some examples are Neovim, cscope, riggrep, fd, fish, and zsh.
1. Linux is free and open-source, meaning you can view and edit any source code of any software.
    This is particularly helpful for learners. 
1. Linux is customisable. Linux user has more choices on every softwares including the desktop environment. 
    Linux systems can also be freely customised to boost your productivity. See [ricing](../let_there_be_Linux/ricing.md).

## Footnotes 


[^Sharing Data]:[Microsoft new privacy statement](https://edri.org/our-work/microsofts-new-small-print-how-your-personal-data-abused/)
[Microsoft privacy statement](https://privacy.microsoft.com/en-gb/privacystatement)

[^Microsoft Recall]: [Microsoft Recall](https://support.microsoft.com/en-gb/windows/retrace-your-steps-with-recall-aa03f8a0-a78b-4b3e-b0a1-2eb8ac48701c); 
[Recall Controversy](https://web.archive.org/web/20240903213502/https://apnews.com/article/microsoft-ai-recall-windows-6ba8df3f22e9fca599d20f2d5770cd95);
Recall can be abused by hackers: [Abuse Recall](https://www.androidauthority.com/windows-recall-password-extract-script-3449105/);
[Reddit Discussion](https://www.reddit.com/r/Windows11/comments/1d9kq78/i_believe_recall_is_likely_to_become_microsofts/)

[^edge]: Edge can not be [uninstalled](https://web.archive.org/web/20240722084347/https://support.microsoft.com/en-gb/microsoft-edge/why-can-t-i-uninstall-microsoft-edge-ee150b3b-7d7a-9984-6d83-eb36683d526d)

[^hacked software]: It is a common practice of hackers to create a fraudulent website that looks similar to a famous website and link hacked software for download.
Any computer that downloaded and run the fraudulent software will be hacked.
OBS hack is a recent notorious example. 
OBS is a popular free and open-sourced software for video recording and live streaming. 
Hackers has created a fake website that looked similar to OBS's official website with a similar URL, but the linked download was a hacked version of OBS. 
Hackers adverstised the fake website with Google ad, which made their fake website showing up first among Google search results.
Many has downloaded the fraudulent software and been hacked. See [gthub discussion](https://github.com/obsproject/obs-studio/issues/4906), [OBS forum](https://obsproject.com/forum/threads/google-ad-serving-fake-obs-website-with-malware.162235/), [youtube discussion](https://www.youtube.com/watch?v=jXrSSq1D0e8&t=12s);

[^not for programmer]: You can not find any allusion to programming in Windows 11's official [advertisement](https://www.microsoft.com/en-gb/windows/windows-11).

[^Battery Gate]:[Battery Gate](https://web.archive.org/web/20240824011120/https://www.npr.org/2020/11/18/936268845/apple-agrees-to-pay-113-million-to-settle-batterygate-case-over-iphone-slowdowns)

[^GNU_Linux]: [GNU Linux, Free Software Fundation](https://www.gnu.org/gnu/Linux-and-gnu.en.html)

# Choosing Operating System

This section compares the pro and cons of three common operating system, MacOS, Windows, and Linux in a user's perspective.

Operating system is the lowest level software in a computer that communicates directly with the hardware and provides support for all other softwares. 

Operating system, however, is _**not**_:

1. related to the hardware. Just like any other software any operating system, idealy, can run on any hardware
1. related to user interface and appearence. 

## Operating System and Desktop Environment

A functional operating system also needs many utility softwares, such as the one that allows users to login, the one that controls the audio, another that connects to the internet, etc. 
Some of them are absolutely essential without which an operating system will fail.
These are also considered a part of the operating system, and I call them operating system utility software. 
Examples include [gnu-binutils](https://www.gnu.org/software/binutils/) and [busybox](https://www.busybox.net/about.html).

Some other softwares are bundled with the operating system and provide important utilities. 
However, they may be uninstalled without affecting the operating system. 
One example is [pulseaudio](https://www.freedesktop.org/wiki/Software/PulseAudio/), a software that controls the audio of the computer. 
An operating system without pulse audio still works but will make no sounds.

There are much grey area and debates on if a software can be considered as part of the kernel, part of the operating system utilities, or just a application software. 
For example, web browsers on most operating system is an application software. 
On ChromeOS, however, the browser may be considered an operating system utility software, as every application is launched by the browser, which is the only user-interface.  

Let us demonstrate the kernel, operating system utility, and application software with the following list:

1. You turn on the computer by pressing the power button: you are working directly with the hardware;
1. The logo of your computer brand shows up: the motherboard is powered on, kernel is being loaded onto ram;
1. The logo of your operating system shows up, sometimes with many lines of messages: the kernel is loaded and under initialisation;
1. Start up screen shows up: the operating system is fully loaded; 
1. You entered the username and password: operating system utilities are trying to authenticate your identity;
1. You enterred the desktop and openned up the browser: you are now interacting with application softwares.

### Desktop Environment

Consider a common senario when using a computer.
You are likely to use the mouse to click on some applications, after which the application will be opened in a new window. 
You can drag the window with your mouse and close it by clicking the cross sign. 
The software that controls your mouse, the windows, and how they interact is called the *Desktop Environment*. 
Sometimes


Windows and MacOS bundles the kernel and the untility software together.
Linux, however, is only a kernel. 
A linux distribution is an operating system that uses the linux kernel. 
There are many linux distribution, including Ubuntu, Fedora, Arch, etc. 
They all use the linux kernel (they may use different version of the kernel) but vastly different utility softwares.

## Comparison

### Windows

Windows is a working, widely available, and stable system developped by Microsoft. Its biggest advantage is that it is ready to use out of the box and it is compatible with almost any software.

Windows is **not** free. It costs 100 GBP. When purchasing a computer with Windows preinstalled, the price of Windows in included in the price of the computer.

Even a you have purchased it and installed onto your computer, you only have limited rights over it. 
For example:

1. Windows may force a system update, or keeping popping up remainders. User can not turn off the reminders;
1. Many built in software can not be uninstalled, including Microsoft edge, copilot, etc. A software that can not be uninstalled is called a malware.

Microsoft uses its unchecked right for abuse. There are many debates on this, here are a few examples:
 
1. Microsoft's privacy statement explicitly states that it will collect your personal data and share them with third-parties organisations. It does not say what data is collected, but a previous statement says it will collect personal information including password and browsing histories.
[^Sharing Data]
1. Microsoft's many software explicitly exploits user data. For example, Microsoft Recall, launched in June 2024, is a software service that helps user find what they have done on the computer previously. 
Recall works by taking the snapshots of the computer periodically and process them with copilot. Any other programs that can take a computer's screenshot and share it through the internet without user's permission is called a spyware. [^Microsoft Recall]

In conclusion, Microsoft have total power over Windows, not the user.

### MacOS

MacOS is Posix Compliant Unix system developped by Apple. It can only be used on Apple computers.
Many consumer appraise MacOS for its stability, beautiful apperance, and convenient interaction with other Apple devices. 
However, the drawback is significant: 

1. MacOS can only be used by Apple computers;
1. MacOS has serious compatibility issues. Many software can not run on MacOS, including most of the games and many developer tools. Some softwares refuses to offer MacOS support, some software's support was deliberately undermined by Apple;
1. Developing MacOS software requires specific permission from apple, which would costs thousands of US dollars;
1. Purchasing apps on apple system costs more, as Apple takes 30% of any purchased made through app store.

Similar to Windows, Apple has the full control of MacOS, and users do not. 
Apple is also seemed to abuse its unchecked rights:

1. Apple has secretly underclocked older devices (making them slower) without notifying users. 
Many suspected Apple did it to encourage consumers to buy new Apple products. Apple refuted this statement but agreed to pay 113 million to settle it. [^Battery Gate]
1. Apple's lack of compatibility with many games seems to be self afflicted. Apple volunteerly stopped the support for OpenGL and Vulkan to
<!-- TODO: -->

In the end, appart from its apperance, MacOS is not so different from windows, except it is created by Apple.

### Linux

[^Sharing Data]:[Microsoft new privacy statement](https://edri.org/our-work/microsofts-new-small-print-how-your-personal-data-abused/)
[Microsoft privacy statement](https://privacy.microsoft.com/en-gb/privacystatement)

[^Microsoft Recall]: [Microsoft Recall](https://support.microsoft.com/en-gb/windows/retrace-your-steps-with-recall-aa03f8a0-a78b-4b3e-b0a1-2eb8ac48701c), 
[Recall Controversy](https://apnews.com/article/microsoft-ai-recall-windows-6ba8df3f22e9fca599d20f2d5770cd95), 
[Abust Recall](https://www.androidauthority.com/windows-recall-password-extract-script-3449105/)
[Reddit Discussion](https://www.reddit.com/r/Windows11/comments/1d9kq78/i_believe_recall_is_likely_to_become_microsofts/)

[^Battery Gate]:[Battery Gate](https://www.npr.org/2020/11/18/936268845/apple-agrees-to-pay-113-million-to-settle-batterygate-case-over-iphone-slowdowns)

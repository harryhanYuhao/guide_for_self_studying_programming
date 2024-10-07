# The Power of Open Source

## XZ Anecdote[^xz backdoor]

On March 2024 a backdoor was found in the popular open-source archiving tool xz. 
Hackers may use this backdoor to gain control of the computer in certain circumstances. 
This backdoor was created by a series of malicious code written by one of xz's maintainers.

The interesting story is that, the backdoor was found by Andres Freund, a developer at Microsoft, when he noticed ssh login time increased from 0.3 seconds to 0.9 seconds. 
He then analyze the execution of ssh login, the source code and commit history of xz, and found the backdoor.

Such backdoor, if exists on Windows or MacOS for an closed-sourced software, will likely never to be discovered,
as it is common for Windows or MacOS to slowdown suddenly for no apparent reasons, let alone reviewing the logs and source code for a closed-source software.

Many, however, criticise open-source software for the lack of reliability, citing this instance. 
I hereby refute their opinions. 
A closed-sourced software will not offer more reliability[^reliability], and the creaters of these software may inject malicious backdoors with equal probability, and the difference is no one will ever find these backdoors.


[^xz backdoor]: Andres Freund [found the backdoor](https://www.openwall.com/lists/oss-security/2024/03/29/4). News [report](https://www.akamai.com/blog/security-research/critical-linux-backdoor-xz-utils-discovered-what-to-know).

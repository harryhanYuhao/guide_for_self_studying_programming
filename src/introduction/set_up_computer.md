# Set up a Computer

To learn coding one must have a computer that fits his need. This means one shall choose wisely the hardware and the software.

Hardware is the keyboard, the chips, and anything that exists in physical world. Software is everything else, including the operating system, the integrated development environment (IDE), etc.

## Hardware: what constitues a computer

For a beginner any functional computer will do. 
However, to make a better and deliberate choice when buying the computer, one must understand how different parts of computer work together.

If you are familiar with these terms: cpu, memory, ram, motherboard, cache, skip to [Choosing Software](#choosing-software)

Computer hardware can be divided into two groups: peripheral hardware and core hardware. 
Peripheral hardware includes the screen, keyboard, mouse, speaker, trackpad, etc. 
A computer can function properly without peripheral hardwares. Yes, without screens or keyboard, you may not interact with the computer, but the computer can still run perfectly. 
In comparison, a computer will not function without core hardware, which includes the cpu, gpu, ram, motherboard, disk, etc, each of them performaing necessary tasks for a computer to funciton. Check these videos to see how computers are assembled[^Assembling Computer]. 

Peripheral hardware matters little: choose the one that looks the best.
It is on the core hardware that most computers differ the most. Here is more explainations.

### CPU 

Cpu is where computer process all of its data. It is the part that makes the computer. To choose a cpu, consider: 

1. Architecture. 

    The architecture describes the low level circuit design of the CPU. 
    For most user, the architecture of the computer only matters when installing softwares, as some softwares may not work on certain architectures. 

    Colloquially, architecture is metnomy of instruction set, which defines how the software interacts with the CPU. (Ie, API) Common instruction set includes x86-64, Arm, Mips, Risc-V, and LoongArch. 
    Most intel and Amd's cpu are of x86-64 (also known as amd64). Mac's M series chips, chips of most cell phone, and Qualcomm's Snapdragon are of Arm. 

    Intel and Amd have jointly developped x86-64 instruction set based on earlier ones for over twenty years. 
    This is both a blessing and a curse, as it makes x86 the most popular, stable, and well-supported instruction set, while, for supporting legacy standards, some outdated and convoluted designs have to remain. 
    Apple's M series chips use a special Arm instruction set developped by Apple. 
    Apple designs M series chips to be power efficient, and one way to acheive it is to remove legacy support. 
    So it is not of surprise that M series computer are more power efficient in the price of all software have to be rewritten for Arm. 
    
    Another aspect of architecture is bit width. 
    Most cpu architecture today are 64 bits, which means the size of the register in CPU. 
    A register in CPU is where data is being processes. 
    64 bit regiter can process data of 64 bits (That is, 8 bytes, 1/128 of a KB) at a time. 
    Apple's M series, Intel's Core Series, and Amd's Ryzen series are all of 64 bits.

2. Frequency
<!-- As for software, I hope this article would convince you to try Linux operating system. -->

## Choosing Software 

It seems worthy to first clear up some misconception on computer software, especially the operating system.

### Operating System is Independent from Computer Hardware:

Many think software and hardware are inseparable, as summarised in the phrase: "I want to buy a Windows Computer". 
This is a misconception.
What the speaker means is he wants to buy a computer that runs the Windows Operating System, but in fact, the computer can run any operating system he likes; let it be linux, BSD, or even MacOS[^OS_Nomenclature].
This misconception is rooted from the modern commercial practise to sell the computer hardware with pre-installed operating system. Apple is more egregious as to allow a computer to run MacOS if and only if it is made by Apple. [^Windows_On_Mac]

### Operating System is Different from User Interface

The second misconception is that operating system determines its user interface and appearence, as summrised in the phrase: "I like MacOS because its UI is pretty". The correct definition for operating system is, to put simply

> \[Operating system is\] an intermediary between the user of the computer and the computer hardware. [^OS Concept]

Operating system is magical software that allow one to interact with silicon chips by typing the keyboard and watching the screen. 
Thus, by definition, operating system is utterly unrelated to the UI or apperence, although display functionalities usually incorparates deeply into the operating system and certain operating systems are distributed with a default UI.

[^Assembling Computer]: [Assemble the core parts](https://www.youtube.com/watch?v=Mmq_fASrTB4); 
[Chinese Version](https://www.bilibili.com/video/BV1tu411f7ja/?spm_id_from=333.337.search-card.all.click&vd_source=82fe9c55db42ef82bc704c85e0ace879)

[^OS_Nomenclature]: OS is short for operating system. There are MacOS, ChromeOS, HarmonyOS, etc.

[^Windows_On_Mac]: Macbook made before 2020 running on intel cpu had the option to dual boot windows. 
It is practically impossible to run any system except MacOS for laptops made after 2020 with a M series chip, because Apple is deliberately untransparent on the design of M series chips to hinder developers of other operating system to adapt to Apple products. [Asahi Linux](https://asahilinux.org) seems to be the only barely working exception. 

[^OS Concept]: Page 1, Silberschatz, A., Galvin, P.B. and Gagne, G. (2018). Operating system concepts. [online] Hoboken, N.J Wiley. Available at: [https://os.ecci.ucr.ac.cr/slides/Abraham-Silberschatz-Operating-System-Concepts-10th-2018.pdf](https://os.ecci.ucr.ac.cr/slides/Abraham-Silberschatz-Operating-System-Concepts-10th-2018.pdf).

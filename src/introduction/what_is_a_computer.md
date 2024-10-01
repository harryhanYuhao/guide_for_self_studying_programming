# What is a Computer

The computer is such a powerful and magical machine, that many fail to reailise that it is just made from preconfigured electronic circuits.

The electronic circuits are hardwares, and all the rules the hardwares follow are the software.

<details>
<summary>Too boring? You may skip this chapter</summary>

This chapter is a brief overview of how each parts of the computer work together. You will understand these things better after you have got your hands dirty.

If you want to start coding right away, skip this and go to [choosing os](../introduction/choosing_os.md) to see why Linux is a better operating system for coding.

</details>

## Hardware: what constitutes a computer

Computer hardwares are the physical objects which constitutes the computer in the real world. 
Most of the computer hardwares are made of complex electronic circuits with semiconductors.
Those circuits, in theory, are no different from the battery-and-wire circuit one could make on a circuit board, but in a much smaller scale.

Computer hardware can be divided into two categories: peripheral hardware and core hardware. 

Peripheral hardware includes the screen, keyboard, mouse, speaker, trackpad, etc. 
A computer can function properly without peripheral hardwares. 
Yes, without a screen or keyboard, you may not interact directly with the computer, but the computer can still run perfectly and can receive instructions in other forms, such as via the internet. 
In comparison, a computer will not function without _**core hardwares**_, which includes the CPU, GPU, ram, motherboard, disk, etc. 

Check these videos[^Assembling Computer] to see how different hardwares are assembled in a computer, these [^Low Level Stuff] for how computer hardware works in the electronic circuits level.

Peripheral hardware matters little for our purpose.
Let us focus intead on how core hardwares function.

### Central Processing Unit (CPU)

CPU is the brain and the most important part of the computer. All data, computation, input, output, and programming logics are processed by the CPU.
CPU is the most important factor that determines how smoothly and fast the computer runs.

Here are some terms that describes a CPU:

1. Architecture. 

    The architecture describes the low level circuit design of the CPU. 
    Some would say the "architecture of the computer" when he means the "architecture of the CPU of the computer".
    For most user, the architecture only matters when installing softwares, as some softwares may not work on certain architectures. 

    Colloquially, the term architecture may be mistaken as the term instruction set, which defines how the software interacts with the CPU (i.e., the API). Common instruction set includes x86-64, Arm, Mips, Risc-V, and LoongArch. 
    Most intel and Amd's CPU are of x86-64 (also known as amd64). Mac's M series chips, chips of most cell phone, and Qualcomm's Snapdragon are of Arm. 

    Instruction set is only a abstract definition for how CPU shall function. 
    It is up to the manufactures to design the CPUs to fullfill the standard.

    Intel and Amd have jointly developped x86-64 instruction set based on earlier ones for over forty years. 
    This is both a blessing and a curse, as it makes x86 the most popular, stable, and well-supported instruction set, while, for compatibility, some outdated designs have to remain. 

    Apple's M series chips use a special Arm instruction set developped by Apple. 
    Apple designs M series chips to be power efficient, and one way to acheive it is to reduce the chip's 'complexity by removing legacy support. 
    It is not of surprise, as a result, M series computer are more power efficient in the price of all softwares have to be rewritten for it.
    
    Another aspect of architecture is bit width. 
    Most CPU architecture today are 64 bits, which means the size of the register in CPU is 64 bits wide. 
    A register in CPU is where data is being processed. 
    A 64 bit register can process data of 64 bits (That is, 8 bytes, or 1/128 of a KB) for each CPU clock cycle. 
    Apple's M series, Intel's Core Series, and Amd's Ryzen series are all of 64 bits.

1. Frequency, or Clock Rate[^Intel Explanation for Clock Rate]
    
    Frequency is the number of clock cycles a CPU can perform in a second. Most CPU can perform a single task in one clock cycle, such as adding two numbers. 
    However, more complicated instruction may take multiple cycles. 
    Some CPU may execute multiple instructions in one cycle.

    Frequency is measured in Hertz, which is times per second.
    The higher the frequency usually means the faster the CPU. 

    The first Intel CPU, Intel 4004, released in 1971, had a frequency of 740 kHz. In 2000 Intel managed to produced Pentium 4 with the freqency of 2 GHz, a 2700-time increase over 30 years. 
    Since then it became increasingly difficult to further increase the frequency.
    In 2024, Intel released Core i9-14900KS, with frequency of 6.2 GHz, only three times of its 2000 predecessor. Yet this chip runs more than 1000 times much faster than Pentium 4 thanks to innovations in other areas.

1. Threads, Cores

    A CPU with 4 threads can perform 4 tasks at a time. 
    One way of acheiving it is to solder multiple smaller CPUs into one. 
    Each of the smaller CPU is called a core. 
    Some cores can execute multiple threads syncronously (e.g., Intel's Hyperthreading). 

    Integrating several cores into one chip enables flexibility in CPU design. 
    For example, some CPUs have efficency cores for lighter task and performance cores for heavy tasks.

1. Cache

    For CPU to run faster, it needs to obtain data faster. 
    Data are stored in memory (RAM) and storage device (SSD).
    Retrieving data from memory may take thousands of CPU cycles, but it only takes one cycle to execute it. 
    Cache was invented to solve this problem.

    This is how caches work: when CPU is to retrieve data, it predicts data required for the subsequent operations and stored them in the cache. 
    CPU can retrieve data from cache super fast, usually under 10 or 100 cycles. 

    Sometimes there are multiple levels of cache, denoted as L1, L2, L3, etc. 
    L1 caches is the fastest but has smallest capcity; L3 is slowest but can hold more data. 
    CPU may have two L1 caches, L1d and L1i. L1d stores data, where L1i stores instructions.
    This design takes into consideration the cost-effectiveness of different memory, as faster memory usually costs much more.

    Caches, RAM and hard disk memory constitutes the memory hierarchy[^Memory Hierarchy] paradigm explained in the next session.

#### History of Intel Processors[^Intel Processors Source]

This tables describes the interesting evolution of Intel CPU. 


|Name        | Year | Frequency | Cache | Cores |  N.B.                          |
|------------|------|-----------|-------|-------|--------------------------------|
|Intel 4004  | 1971 | 740 kHz   | None  |   1   | First single chip IC processor, 4 bit | 
|Intel 8008  | 1972 | 500 kHz   | None  |   1   | 8 bit | 
|Intel 8085  | 1976 | 3 MHz     | None  |   1   | 8 bit pre x86| 
|Intel 8086  | 1978 | 10 MHz    | None  |   1   | 16 bit x86 |
|Intel386™ DX  | 1985 | 33 MHz  | None  |   1   | 32 bit x86 |
|Intel486™ DX | 1989 | 50 MHz   | 8 Kb  |   1   | 32 bit x86 |
|Intel® Pentium® | 1993 | 66 MHz| 8 Kb L1d, 8Kb L1i |   1   | 32 bit x86. First super-scalar x86 processor. (Meaning executing 2 instruction at one clock cycle)| 
|Intel® Pentium® II                | 1997 | 300 MHz         | 512 Kb L2 |   1   | 32 bit x86. Has 2 level cache|
|Intel® Pentium®  4                | 2000 | 2 GHz           | 256 Kb L2 |   1   | 32 bit x86. First x86 processor with hyper-threading|
|Intel® Pentium®  4 Extreme Edition| 2004 | 2 GHz           | 2 Mb L2 |   1   | 32 bit x86 |
|Intel® Core™2 Duo Processor E4300 | 2007 | 1.8 GHz         | 2 Mb L2 |   2  | 64 bit x86 |
|Intel® Core™ i7-950 Processor     | 2009 | 3.06 GHz        | 8 Mb |   4 cores, 8 threads   | 64 bit|
|Intel® Core™ i7-3970X             | 2012 | 3.5 GHz         | 15 Mb |   6 cores, 12 threads   | |
|Intel® Core™ i7-6700              | 2015 | 3.4 GHz (Turbo) | 8 Mb |   4 cores, 8 threads   | Integraged Intel® HD Graphics 530 GPU|
|Intel® Core™ i7-8665UE            | 2018 | 4.0 GHz (Turbo) | 8 Mb |   4 cores, 8 threads   | Integraged Intel® HD Graphics 620 GPU|
|Intel® Core™ i9 processor 14900KS | 2024 | 6.2 GHz (Turbo) | 32 Mb |   24 cores, 32 threads   | Integraged with Intel® UHD Graphics 770 GPU|

### The Memory Hierarchy

Moder computer are designed with memory hierarchy principle for effective data storage, fast retrieval while maintaing cost.

Caches, the fastest, most expensive, and the smallest in capacity stay at the top of the hierarchy.
Random Access Memory (RAM) lays in the middle. It is slower than cache but faster than hard disk. 
Hard disk is the cheapest, largest, and the slowest.

<!-- TODO: state TABLE NAME -->
Please see the table in the next session for comparison of the speed of caches, RAM, and hard disk, and the time for CPU to execute various other tasks.

#### Characterising Performance of Storage Devices: Bandwidth and Latency

Two comman benchmarking metrics for storage devices are bandwidth and latency.

Bandwidth (or throughputs), measured in bytes per second, is the maximum amount of data that can be transferred per second. 
There are two operations for a storage device, read and write, and bandwidth for reading is likely to be higher than writing.
Moreover, the bandwidth would diminish dramatically when the device needs read and write simultaneously, or the capacity of the device is close to full.

Latency is the time between the CPU sends instruction for retrieving the data and the first byte of data delivered to the CPU.

In ideal situation bandwidth and latency are independent. 
In reality, however, they are weakly correlated: it is of no use that you can transfer 10 GB per second but it took 10 seconds to initiate the transfer. 

Accurately benchmarking storage devices is very diffiult for two reason. 
First, the performance of the storage device is unstable. It dependends on the CPU,the design of the motherboard, and the type and content of the data.
Second, most of the low level input and output are controlled solely by the hardware and is not accessible to the user or the operating system.

Let us now introduce memory and secondary storage devices, the lower part of the hierarchy.

#### Random Access Memory (RAM)

Random Access Memory, or RAM, is in the middle layer of the memory hierarchy. 
Slower and cheaper than cache, but faster and more expensive than hard disks.

RAM is volatile storage device; this measn all data stored in RAM will be lost after powering off. 

When computers are executing some program stored in SSD, it will first load all instructions and data into RAM for faster retrieval. 
The exact behaviour will depend on operating system.

<!-- TODO: DDR, SDDR, GDDR, etc -->

#### Secondary Storage (Harddisk, SSD, HDD)

Secondary storage devices (or, colloquially, the hard disk) is at the bottom of the hierarchy.
They are static storage devices. 
The data will not be lost after powering off.
All persistent data and software, including the operating system, are stored in a secondary storage device.

#### Solid State Drive (SSD) and Hard Disk Drive (HDD)

The technology for storage devices has underwent various innovation since its inception. 
In the early days people used tapes and floppy disks.
Two common modern technology are Solid State Drive (SSD) and Hard Disk Drive (HDD).

HDD is usually cheaper, has larger capacity and longer lifetime. 
It uses a spinning magnetic disk for data storage and a magnetic needle for reading and writing.
You can hear the disking spinning when it is powered on.

SSD is the newer technology that boasts for its high bandwidth and low latency.
It does not use magnetic disk but semiconductor logical gates.
This means SSD looks like a chip and can be made smaller.

Historically, SSD has been very expensive. 
Their price has dropped dramatically since 2023, thanks to intense market competitions from the Chinese firms.

#### Comparison of Time Needed for Various Operations

The following table compares the time needed to execute various operations.

|Event                           | Time (ns) | Time (\\( \mu s\\))| Time (ms) | Scale                  | 
|--------------------------------|-----------|--------------------| --------- | ---------------------- |
|One CPU cycle                   | 0.25      |                    |           | 0.5                    |
|L1 cache access                 | 0.5       |                    |           | 1                      |
|L2 cache access                 | 7         |                    |           | 14                     |               
|Mutex lock/unlock               | 25        |                    |           | 50                     |               
|Main memory access              | 100       | 0.1                |           | 200                    |               
|Transmitting an Ethernet Packet | 15000     | 15                 |           | \\(3 \times 10^4\\)    |
|SSD Access                      | 250000    | 250                |           | \\(5 \times 10^5\\)    |
|Move Data to GPU                |           | 800                | 0.8       | \\(1.6 \times 10^6\\)  |
|Internet Round Trip             |           | 5000               | 5         | \\(1 \times 10^7\\)    |
|HDD Access                      |           | 10000              | 10        | \\(2 \times 10^7\\)    |
|Cacluating Primes to 100,000    |           |                    | 100       | \\(2 \times 10^8\\)    |
|Send a Packet From Beijing to Edinburgh |   |                    | 500       | \\(1 \times 10^9\\)    |
|Computer Reboot                 |           |                    | 30,000    | \\(6 \times 10^{10}\\) |

To make sense of these numbers, the following table assumes one CPU cycle to take 0.25 seconds, and enlong the time for other events on the same proportion. 

|Computer Event                  | Real Life Event                              | Time          | Scale   | 
|--------------------------------|--------------------------------------------- | ------------- |-------- |
|One CPU cycle                   | Eye Blinking                                 | 0.25 s        | 0.5     |
|L1 cache access                 | Typing a Word                                | 0.5 s         | 1       |
|L2 cache access                 | Running 50 meters                            | 7  s          | 14      |
|Mutex lock/unlock               | A round in Basketball                        | 25 s          | 50      |
|Main memory access              | Reading a short passage                      | 100 s         | 200     |
|Transmitting an Ethernet Packet | Flight from London to Moscow                 | 4.2 h         | \\(3 \times 10^4\\) |
|SSD Access                      | Life span of may fly                         | 70 h          | \\(5 \times 10^5\\) |
|Move Data to GPU                | Slovania Won Independence                    | 10 days       | \\(1.6 \times 10^6\\) |
|Internet Round Trip             | China's Chang'e 6 Returns Samples from Moon  | 2 months      | \\(1 \times 10^7\\) |
|HDD Access                      | Wheat Maturation                             | 4 months      | \\(2 \times 10^7\\) |
|Cacluating Primes to 100,000    | One US president Term                        | 4 years       | \\(2 \times 10^8\\) |
|Send a Packet From Beijing to Edinburgh | Pyramid of Giza Built                | 20 years      | \\(1 \times 10^9\\) |
|Computer Reboot                 | Span of Byzantine Empire                     | 1200 years    | \\(6 \times 10^{10}\\) |

### Graphics Processing Unit (GPU) [^Intel_on_GPU]

While CPU has a dozen of big and powerful cores, GPU has thousands of small cores. The GPU's cores can effectively handle computation, but has difficulties in processing logics.  

This makes GPU suitable for running algorithms that can be splitted into smaller parallel tasks, provided those smaller tasks are mutually independent.
These algorithms are sometimes called embarrasingly parallel algorithms. 
Most algorithms in linear algebra and statistics, such as vector addition, dot product, matrix multiplication, and finding the mean value are embarrassingly parallel. 

Most graphical algorithms are also embarrassingly parallel, as the color of one pixel does not depend on the other. 
In fact, most graphical algorithms takes the form of matrices. Thus comes the name of GPU, as its original purpose is to process graphical algorithms. 

In recent years people found that GPU can execute machine learning algorithms more efficiently than CPU. 
It shall be of no surprise as machine learning utilises a lot of linear algebra and statistical algorithms.  

### Other Hardwares

## Software 

Computer hardwares are everything that exists physically, and the softwares are everthing else. 
A computer needs **_both_** to function properly.

Examples of softwares include:

1. The application softwares that includes the web browser, pdf viewer, music players, python interpreter, etc, with which a user will interact directly;
1. The desktop environment which will allow you to open, close, resize, and organsize application windows with your mouse and keyboard. All application software will depend on desktop environment. 
1. The device drivers that controls your mouse, keyboard, and other accessories. 
1. The one that manage the cpu, memory, the disk, etc. They are the operating system and system softwares. Every other software depends on them.

This is the _**software hierarchy**_. 

Lower level software provides support for higher level ones. 
At the lowest level is the operarting system, which communicate directly with the hardware. 
At the highest level is application softwares, with which the users interact directly. 

The operating system and other related low-level software are called *__system software__*.

Application software can not access the memory or send a instruction to cpu directly; instead, it make such requests to the system software, which then communicate directly with the hardware, and returns the required informations back to the application software.


### Operating System

Operating system (OS) is likely the most important software. 

Its precise definition is:

> \[Operating system is\] an intermediary between the user of the computer and the computer hardware. [^OS Concept]

To put it in another way, operating system is magical software that allow users to send instruction to the silicon chips by using the keyboard, mouse, etc, and return the chips' respond in human-readable forms.

Operating system, however, is _**not**_:

1. related to the hardware. Just like any other software any operating system, idealy, can run on any hardware
1. related to user interface and appearence. 

#### Kernel, the Core of the Operating System

Kernel is the most important part of the operating system that has control of almost everything in the computer. 
It provides many abstract and innovative functionalities every other software relies upon that ensure the security, speed, and stability of the computer. 

Here are some of the typical subsystems of a kernel:

1. Threads and [scheduler](https://docs.kernel.org/scheduler/index.html): Thread is the sequence of instructions that computer shall execute. 
Each computer program lives on its respective thread. 
Some program may spawn multiple threads for parallel execution. 
A cpu can only run a dozen threads concurrently, but thousand of them may be waiting to be executed at a time.
To solve this problem, the scheduler, as part of the kernel, based on the priority of the program, schedules the cpu to run certain threads for a short time, switch to other threads, run for another short time, and switch back. 
In a user's perspective, thousands of programs may seem to run concurrently.
1. [Memory management](https://docs.kernel.org/mm/index.html): It is common that a program requests a large space of memory at the start of execution, but will only use them later, with some memory staying unused for the whole duration.
It is a lot of waste if the memory is allocated at the time of request.
Virtual memory is invented to solve this problem. This is how it works: at the start of execution each thread is allocated an unlimited amount of virtual memory, and only at the time of use these virtual memory is mapped to the phsycial RAM. (The full scheme is much more complicated)

The kernel, as magical as it seems, is written in programming languages just like any other softwares.
The kernels of Windows, Linux, and MacOS are all written in [C](../lets_write_code/c.md) and [assembly language](../lets_write_code/assembly.md).
Currently, there is attempt to write the kernel in [rust](../lets_write_code/rust.md). 

You can check the source code of the most famous open-sourced kernel here: [Linux Kernel](https://www.kernel.org/).

#### Other parts of the Operating System

Many utility softwares, besides the kernel, are necessary for a functioning computer. 
These softwares are system softwares. 
Some of the system softwares are considered part of the operating system.

For example:

1. A bootloader to load the operating system when the computer is booting up;
1. Various device drivers for keyboards, mice, usbs, wifi, gpu, etc;
1. The desktop environment, which is a series of software that controls the windows and graphical output of the computer,
1. Some [utility software](https://www.gnu.org/software/binutils/) for assemble the assembly, searching symbols, linking object files, managing archives, etc.

Some softwares seem mundane, but are essential:

1. An application for user login;
1. A software to create and delete files and directory,

Many operating systems ship with these system softwares. As they are incorporated into the OS very closely, many consider them a part of the operating system.

There are much debates on if a software can be considered a system software or an application software. 
For example, web browsers on most operating system is an application software. 
On ChromeOS, however, the browser may be considered an operating system utility software, as every application is launched by the browser, which acts as the only user-interface.  

The following list shows which level of software the user is interacting with when booting up the computer.

1. You turn on the computer by pressing the power button: you are working directly with the hardware;
1. The logo of your computer brand shows up: the motherboard is powered on, kernel is being loaded onto ram (likely init ram file system);
1. The logo of your operating system shows up, sometimes with pages of logs: the kernel is loaded and under initialisation;
1. Start up screen shows up: the operating system is fully loaded; 
1. You entered the username and password: a system software is trying to authenticate your identity;
1. You enterred the desktop and openned up the browser: you are now working with application softwares.

#### Examples of Operating System

The most popular operating systems today include Windows, MacOS, and the series of Linux distributions. 
There are, however, many more less known ones. The BSD and Solaris belongs to the Unix family. 
AmigaOS, OS/2, BeOS, RISC OS, MorphOS, and Haiku were famous in their days.
Minix is another one designed for teaching. 

The most popular operating systems for personal computer is MacOS and Windows. 

They are also the only preinstalled operating system for most commercially available computers.

Linux is overwhelmingly more popular, however, among professional servers and super computers. 
Since 2017, all of the top 500 super computer runs on Linux.

Linux is also suitable for personal use.

If you have not used Linux before, you should try it, as it is an objectively superior OS for writing code in most circumstances.

#### Choosing an Operating System for Personal Use

The short answer is to choose Linux for coding, Windows to play games, and Mac to waste some money.


Check [Choosing OS](./choosing_os.md) session for a detailed comparison of Linux, MacOS, and Windows.


### Desktop Environment 

Desktop environment is a series of softwares that control the appearence of application windows, how they are arranged, and how they interact with the mouse and the keyboard, i.e., it decides the graphical user interface.

Windows and MacOS are bundled with an uninstallable desktop environment. 
Desktop environment in general, however, are **_not_** dependent on the operating system and can be installed and uninstalled without effecting the OS.

Some examples of desktop environment are Gnome, KDE plasma, and xfce.

There are some innovative desktop environments (or windows manager) that are, although vastly different from the window and drag style in Windows and Mac, equally effective. They are i3, sway, and hyprland.

It is the desktop environment that defines the immediate user experience of a computer. 
As linux systems may have very differet desktop environemnt, the user experience and the GUI among linux system varies dramatically.

### Package Manager



### Footnotes

[^Assembling Computer]: [Assemble the core parts](https://www.youtube.com/watch?v=Mmq_fASrTB4); 
[Chinese Version](https://www.bilibili.com/video/BV1tu411f7ja/?spm_id_from=333.337.search-card.all.click&vd_source=82fe9c55db42ef82bc704c85e0ace879)

[^Low Level Stuff]: [Branch Education](https://www.youtube.com/@BranchEducation). [Branch Education on Bilibili](https://space.bilibili.com/1778586949).



[^Intel Explanation for Clock Rate]: [Intel Explanation for Clock Rrate](https://www.intel.com/content/www/us/en/gaming/resources/CPU-clock-speed.html)

[^Memory Hierarchy]: [Wikipedia: Memory Hierarchy](https://en.wikipedia.org/wiki/Memory_hierarchy)

[^Intel Processors Source]: [Intel Processors](https://www.intel.com/pressroom/kits/quickreffam.htm#i486);
[i7-950](https://www.intel.com/content/www/us/en/products/sku/37150/intel-core-i7950-processor-8m-cache-3-06-ghz-4-80-gts-intel-qpi/specifications.html);
[i7-3970x](https://ark.intel.com/content/www/us/en/ark/products/70845/intel-core-i7-3970x-processor-extreme-edition-15m-cache-up-to-4-00-ghz.html);
[i7-6700](https://www.intel.com/content/www/us/en/products/sku/88196/intel-core-i76700-processor-8m-cache-up-to-4-00-ghz/specifications.html);
[i7-8665UE](https://www.intel.com/content/www/us/en/products/sku/193554/intel-core-i78665ue-processor-8m-cache-up-to-4-40-ghz/specifications.html);
[i9-1490KS](https://www.intel.com/content/www/us/en/products/sku/237504/intel-core-i9-processor-14900ks-36m-cache-up-to-6-20-ghz/specifications.html)


[^Intel_on_GPU]: [Intel on Difference of CPU and GPU](https://www.intel.com/content/www/us/en/products/docs/processors/cpu-vs-GPU.html)

[^OS Concept]: Page 1, Silberschatz, A., Galvin, P.B. and Gagne, G. (2018). Operating system concepts. [online] Hoboken, N.J Wiley. Available at: [https://os.ecci.ucr.ac.cr/slides/Abraham-Silberschatz-Operating-System-Concepts-10th-2018.pdf](https://os.ecci.ucr.ac.cr/slides/Abraham-Silberschatz-Operating-System-Concepts-10th-2018.pdf).

[^Internet_Choosing_Hardware]: [CPU benchmark](https://www.CPUbenchmark.net/); [Tom's Hardware](https://www.tomshardware.com/reviews/CPU-hierarchy,4312.html); 

[^OS_Nomenclature]: OS is short for operating system. There are MacOS, ChromeOS, HarmonyOS, etc.

[^Windows_On_Mac]: Macbook made before 2020 running on intel CPU had the option to dual boot windows. 
It is practically impossible to run any system except MacOS for laptops made after 2020 with a M series chip, because Apple is deliberately untransparent on the design of M series chips to hinder developers of other operating system to adapt to Apple products. [Asahi Linux](https://asahilinux.org) seems to be the only barely working exception. 



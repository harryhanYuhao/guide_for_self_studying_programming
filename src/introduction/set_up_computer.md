# Set up a Computer

To learn coding one must have a computer that fits his need. This means one shall choose wisely the hardware and the software.

Hardware is the keyboard, the chips, and anything that exist physically. Software is everything else, including the operating system, the integrated development environment (IDE), etc.

## Hardware: what constitutes a computer

For a beginner any functional computer will do. 
However, to make a better choice when buying the computer, one must understand how different parts of computer work together.

If you are familiar with these terms: CPU, memory, ram, motherboard, cache, skip to [Choosing Software](#choosing-software)

Computer hardware can be divided into two groups: peripheral hardware and core hardware. 
Peripheral hardware includes the screen, keyboard, mouse, speaker, trackpad, etc. 
A computer can function properly without peripheral hardwares. Yes, without screens or keyboard, you may not interact with the computer, but the computer can still run perfectly. 
In comparison, a computer will not function without core hardware, which includes the CPU, gpu, ram, motherboard, disk, etc. Check these videos[^Assembling Computer] to see how different hardwares are assembled in a computer.

Peripheral hardware matters little: choose the one that looks the best.
It is on the core hardware that most computers differ the most. 
I refer to you various sources on internet for choosing a commercially available hardware[^Internet_Choosing_Hardware].
Here, let us focus on how they function.

### Central Processing Unit (CPU)

CPU is the brain and the most important part of the computer. All data, computation, input, output, and programming logics are processed by the CPU. It is CPU that determines how smoothly and fast the computer runs in most circumstances.

Here are some terms that describes a CPU:

1. Architecture. 

    The architecture describes the low level circuit design of the CPU. 
    For most user, the architecture of the computer only matters when installing softwares, as some softwares may not work on certain architectures. 

    Colloquially, architecture is synonymous to the term instruction set, which defines how the software interacts with the CPU (i.e., the API). Common instruction set includes x86-64, Arm, Mips, Risc-V, and LoongArch. 
    Most intel and Amd's CPU are of x86-64 (also known as amd64). Mac's M series chips, chips of most cell phone, and Qualcomm's Snapdragon are of Arm. 

    Instruction set is only a abstract definition for how CPU shall function. It is upto the manufactures to design the CPUs to fullfill the required functions.

    Intel and Amd have jointly developped x86-64 instruction set based on earlier ones for over forty years. 
    This is both a blessing and a curse, as it makes x86 the most popular, stable, and well-supported instruction set, while, for compatibility, some outdated designs have to remain. 
    Apple's M series chips use a special Arm instruction set developped by Apple. 
    Apple designs M series chips to be power efficient, and one way to acheive it is to remove legacy support. 
    So it is not of surprise that M series computer are more power efficient in the price of all softwares have to be rewritten for Arm. 
    
    Another aspect of architecture is bit width. 
    Most CPU architecture today are 64 bits, which means the size of the register in CPU is 64 bits wide. 
    A register in CPU is where data is being processed. 
    A 64 bit register can process data of 64 bits (That is, 8 bytes, or 1/128 of a KB) for each CPU clock cycle. 
    Apple's M series, Intel's Core Series, and Amd's Ryzen series are all of 64 bits.

1. Frequency, or Clock Rate[^Intel Explanation for Clock Rate]
    
    Frequency is the number of clock cycles a CPU can perform in a second. Most CPU can perform a single task in one clock cycle, such as adding two numbers. 
    However, more complicated instruction may take multiple cycles. 
    Some modern CPU may even execute multiple instructions in one cycle.

    Frequency is measured in Hertz, which is times per second.
    The higher the frequency usually means the faster the CPU. 

    The first Intel CPU, Intel 4004, released in 1971, had a frequency of 740 kHz. In 2000 Intel managed to produced Pentium 4, a chip with freqency of 2 GHz, a 2700-time increase over 30 years. 
    Since then it became increasingly difficult to further increase the frequency.
    In 2024, Intel released Core i9-14900KS, whose frequency is 6.2 GHz, only three times of its 2000 predecessor. Yet this chip performs much better than Pentium 4 thanks to better design and innovations in other areas.

1. Threads, Cores

    A CPU with 4 threads can perform 4 tasks at a time. 
    One way of acheiving it is to integrate multiple smaller CPU into one chip. 
    Each of the smaller CPU is called a core. 
    Some cores can execute multiple threads syncronously (et, Intel's Hyperthreading). 

    Integrating several cores into one chip provides great flexibility for CPU design. 
    Some CPU have efficency cores for lighter task and performance cores for heavy tasks.

1. Cache

    For CPU to run faster, it needs to obtain data faster. 
    Data are stored in memory (RAM) and storage device (SSD).
    Retrieving data from memory may take thousands of CPU cycles, but it only takes one cycle to execute it. 
    Cache was invented to solve this problem.
    (Here we are referring to Latency. Check RAM and Storage device session for more.)

    When CPU is to retrieve data, it predicts data required for subsequnet operations and stored them in cache. Cache is an ultra fast memory from which CPU can retrieve data fast, usually under 10 or 100 cycles. 

    Sometimes there are multiple levels of cache, such as L1, L2, L3. 
    L1 caches is  the fastest but also can hold smallest amount of data; L3 are slower but can hold more data. 
    Some cpu has two L1 caches, L1d and L1i. L1d stores data, where L1i stores instructions.

    Caches, RAM and hard disk memory constitutes the memory hierarchy[^Memory Hierarchy] paradigm. Check memory session for more.

#### History of Intel Processors[^Intel Processors Source]

This tables describes interesting evolution of Intel CPU. 


|Name        | Year | Frequency | Cache | Cores |  N.B.                          |
|------------|------|-----------|-------|-------|--------------------------------|
|Intel 4004  | 1971 | 740 kHz   | None  |   1   | First single chip IC processor, 4 bit | 
|Intel 8008  | 1972 | 500 kHz   | None  |   1   | 8 bit | 
|Intel 8085  | 1976 | 3 MHz     | None  |   1   | 8 bit pre x86| 
|Intel 8086  | 1978 | 10 MHz    | None  |   1   | 16 bit x86 |
|Intel386™ DX  | 1985 | 33 MHz    | None  |   1   | 32 bit x86 |
|Intel486™ DX | 1989 | 50 MHz    | 8 Kb  |   1   | 32 bit x86 |
|Intel® Pentium® | 1993 | 66 MHz   | 8 Kb L1d, 8k L1i |   1   | 32 bit x86. First super-scalar x86 processor. (Meaning executing 2 instruction at one clock cycle)| 
|Intel® Pentium® II| 1997 | 300 MHz   | 512 Kb L2 |   1   | 32 bit x86. Has 2 level cache|
|Intel® Pentium®  4| 2000 | 2 GHz   | 256 Kb L2 |   1   | 32 bit x86. First x86 processor with hyper-threading|
|Intel® Pentium®  4 Extreme Edition| 2004 | 2 GHz   | 2 Mb L2 |   1   | 32 bit x86 |
|Intel® Core™2 Duo Processor E4300 | 2007 | 1.8 GHz   | 2 Mb L2 |   2  | 64 bit x86 |
|Intel® Core™ i7-950 Processor | 2009 | 3.06 GHz   | 8 Mb |   4 cores, 8 threads   | 64 bit|
|Intel® Core™ i7-3970X | 2012 | 3.5 GHz   | 15 Mb |   6 cores, 12 threads   | |
|Intel® Core™ i7-6700 | 2015 | 3.4 GHz (Turbo)  | 8 Mb |   4 cores, 8 threads   | Integraged Intel® HD Graphics 530 GPU|
|Intel® Core™ i7-8665UE | 2018 | 4.0 GHz (Turbo)  | 8 Mb |   4 cores, 8 threads   | Integraged Intel® HD Graphics 620 GPU|
|Intel® Core™ i9 processor 14900KS | 2024 | 6.2 GHz (Turbo)   | 32 Mb |   24 cores, 32 threads   | Integraged with Intel® UHD Graphics 770 GPU|

### Storage Devices

All data and software, including the operating system, needs to be stored persistently in a storage device which CPU can read. 

It is usually more difficult to benchmark the performance of storage device, as the performance depends on the speed of CPU and RAM. (See next session for RAM). 
Besides capacity, there are two metrics usually used to describe storage devices: bandwidth and latency. 

#### Bandwdith and Latency

Bandwidth (or throughputs), measurred in bytes per second, is the maximum amount of data that can be transferred per second. 
There are two operations for a storage device, read and write, and bandwidth for reading is likeing to be greater than writing.
Moreover, the bandwidth would diminish dramatically when the device needs read and write in short period of time.

Latency is the time it takes for cpu to retrieve data from the storage device. 
Common latency for modern storage device ranges from hundreds of microseconds to milliseconds.

In ideal situation bandwidth and latency are independent. 
In reality, they are weakly correlated: it is of no use that you can transfer 10 GB per second but it took 10 seconds to initiate the transfer. 

#### Solid State Drive (SSD) and Hard Disk Drive (HDD)

The technology for manufaturing storage devices has underwent various innovation since its inception. 
In the early days people used tapes and floppy disks.
Two common modern technology are Solid State Drive (SSD) and Hard Disk Drive (HDD).

HDD is usually cheaper, has larger capacity and longer lifetime. 
HDD is an iconic device as at its core is a spinning magnetic disk. 
One can here the disking spinning when it is powered on.

SSD is the newer technology that boosts for its high bandwidth and low latency.
It does not use magnetic disk but use semiconductor logical gates.
This means SSD looks like a chip and be made smaller.

Historically, SSD has been very expensive. 
Their price has dropped dramatically since 2023, thanks to intense market competitions from the Chinese firms.

### Random Access Memory (RAM)

Random Access Memor, or RAM, is another layer of the memory hierarchy and a much faster storage device compared to HDD and SSD. 
However, it is not a static storage device, which means all data will be lost after powering off. 

When computers are executing some program stored in SSD, it will first load all instructions 

### Graphic Processing Unit (GPU) [^Intel_on_GPU]

### Other Parts of the Computer


## Choosing Software 

It seems worthy to first clear up some misconception on computer software, especially the operating system (OS).

### Operating System is Independent from Computer Hardware:

Many think software and hardware are inseparable, as summarised in the phrase: "I want to buy a Windows Computer". 
This is a misconception.
What the speaker means is he wants to buy a computer that runs the Windows Operating System, but in fact, the computer can run any operating system he likes; let it be linux, BSD, or even MacOS[^OS_Nomenclature].
This misconception is rooted from the modern commercial practise to sell the computer hardware with pre-installed operating system. Apple is more egregious as to allow a computer to run MacOS if and only if it is made by Apple. [^Windows_On_Mac]

### Operating System is Different from the User Interface (UI)

The second misconception is that operating system determines computer's appearence, as summrised in the phrase: "I like MacOS because its UI is pretty". 
Operating system is utterly unrelated to the UI or apperence, although display functionalities usually incorparates deeply into the operating system and certain operating systems are distributed with a default UI.

The correct definition for operating system is, to put simply

> \[Operating system is\] an intermediary between the user of the computer and the computer hardware. [^OS Concept]

That is, operating system is magical software that allow one to interact with silicon chips by typing the keyboard and watching the screen. 

[^Assembling Computer]: [Assemble the core parts](https://www.youtube.com/watch?v=Mmq_fASrTB4); 
[Chinese Version](https://www.bilibili.com/video/BV1tu411f7ja/?spm_id_from=333.337.search-card.all.click&vd_source=82fe9c55db42ef82bc704c85e0ace879)

[^Internet_Choosing_Hardware]: [CPU benchmark](https://www.CPUbenchmark.net/); [Tom's Hardware](https://www.tomshardware.com/reviews/CPU-hierarchy,4312.html); 
[^Intel Processors Source]: [Intel Processors](https://www.intel.com/pressroom/kits/quickreffam.htm#i486);
[i7-950](https://www.intel.com/content/www/us/en/products/sku/37150/intel-core-i7950-processor-8m-cache-3-06-ghz-4-80-gts-intel-qpi/specifications.html);
[i7-3970x](https://ark.intel.com/content/www/us/en/ark/products/70845/intel-core-i7-3970x-processor-extreme-edition-15m-cache-up-to-4-00-ghz.html);
[i7-6700](https://www.intel.com/content/www/us/en/products/sku/88196/intel-core-i76700-processor-8m-cache-up-to-4-00-ghz/specifications.html);
[i7-8665UE](https://www.intel.com/content/www/us/en/products/sku/193554/intel-core-i78665ue-processor-8m-cache-up-to-4-40-ghz/specifications.html);
[i9-1490KS](https://www.intel.com/content/www/us/en/products/sku/237504/intel-core-i9-processor-14900ks-36m-cache-up-to-6-20-ghz/specifications.html)

[^Intel Explanation for Clock Rate]: [Intel Explanation for Clock Rrate](https://www.intel.com/content/www/us/en/gaming/resources/CPU-clock-speed.html)

[^Memory Hierarchy]: [Wikipedia: Memory Hierarchy](https://en.wikipedia.org/wiki/Memory_hierarchy)

[^Intel_on_GPU]: [Intel on Difference of CPU and GPU](https://www.intel.com/content/www/us/en/products/docs/processors/cpu-vs-gpu.html)

[^OS_Nomenclature]: OS is short for operating system. There are MacOS, ChromeOS, HarmonyOS, etc.

[^Windows_On_Mac]: Macbook made before 2020 running on intel CPU had the option to dual boot windows. 
It is practically impossible to run any system except MacOS for laptops made after 2020 with a M series chip, because Apple is deliberately untransparent on the design of M series chips to hinder developers of other operating system to adapt to Apple products. [Asahi Linux](https://asahilinux.org) seems to be the only barely working exception. 

[^OS Concept]: Page 1, Silberschatz, A., Galvin, P.B. and Gagne, G. (2018). Operating system concepts. [online] Hoboken, N.J Wiley. Available at: [https://os.ecci.ucr.ac.cr/slides/Abraham-Silberschatz-Operating-System-Concepts-10th-2018.pdf](https://os.ecci.ucr.ac.cr/slides/Abraham-Silberschatz-Operating-System-Concepts-10th-2018.pdf).

# Set up a Computer

To learn coding one must have a computer that fits his need. This means one shall choose wisely the hardware and the software.

Hardware is the keyboard, the chips, and anything that exist physically. Software is everything else, including the operating system, the integrated development environment (IDE), etc.

## Hardware: what constitutes a computer

For a beginner any functional computer will do. 
However, to make a better choice when buying the computer, one must understand how different parts of computer work together.

If you are familiar with these terms: cpu, memory, ram, motherboard, cache, skip to [Choosing Software](#choosing-software)

Computer hardware can be divided into two groups: peripheral hardware and core hardware. 
Peripheral hardware includes the screen, keyboard, mouse, speaker, trackpad, etc. 
A computer can function properly without peripheral hardwares. Yes, without screens or keyboard, you may not interact with the computer, but the computer can still run perfectly. 
In comparison, a computer will not function without core hardware, which includes the cpu, gpu, ram, motherboard, disk, etc. Check these videos[^Assembling Computer] to see how different hardwares are assembled in a compiuter.

Peripheral hardware matters little: choose the one that looks the best.
It is on the core hardware that most computers differ the most. Here is more explainations.

### Central Processing Unit (CPU)

Cpu is the brain and the most important part of the computer. All data, computation, input, output, and programming logics are processed by the cpu.

Here are some terms that describes a cpu:

1. Architecture. 

    The architecture describes the low level circuit design of the CPU. 
    For most user, the architecture of the computer only matters when installing softwares, as some softwares may not work on certain architectures. 

    Colloquially, architecture is the metonymy of the term instruction set, which defines how the software interacts with the CPU. (ie, the API) Common instruction set includes x86-64, Arm, Mips, Risc-V, and LoongArch. 
    Most intel and Amd's cpu are of x86-64 (also known as amd64). Mac's M series chips, chips of most cell phone, and Qualcomm's Snapdragon are of Arm. 

    Intel and Amd have jointly developped x86-64 instruction set based on earlier ones for over forty years. 
    This is both a blessing and a curse, as it makes x86 the most popular, stable, and well-supported instruction set, while, for various compatibility purposes, some outdated and convoluted designs have to remain. 
    Apple's M series chips use a special Arm instruction set developped by Apple. 
    Apple designs M series chips to be power efficient, and one way to acheive it is to remove legacy support. 
    So it is not of surprise that M series computer are more power efficient in the price of all software have to be rewritten for Arm. 
    
    Another aspect of architecture is bit width. 
    Most cpu architecture today are 64 bits, which means the size of the register in CPU is 64 bits wide. 
    A register in CPU is where data is being processed. 
    A 64 bit register can process data of 64 bits (That is, 8 bytes, or 1/128 of a KB) for each cpu clock cycle. 
    Apple's M series, Intel's Core Series, and Amd's Ryzen series are all of 64 bits.

1. Frequency, or Clock Rate
    
    Frequency is the number of clock cycles a cpu can perform in a second. Most cpu can perform a single task in one clock cycle, such as adding two numbers stored in two registers.
    Frequency is measured in Hertz, which is times per second.
    The higher the frequency usually means the faster the cpu. 

    The first Intel CPU, Intel 4004, released in 1971, had a frequency of 740 kHz. In 2000 Intel managed to produced Pentium 4, a chip with freqency of 2 GHz, a 1400 times increase over 30 years. 
    Since then it became increasingly difficult to further increase the frequency, and Intel resorted to other means for increasing performance, such as increasing size of cache and number of cores. 
    In 2024, Intel released Core i9-14900KS, whose frequency is 6.2 GHz, only three times of its 2000 predecessor. Yet this chip performs much better than Pentium 4 thanks to better design.

1. Threads, Cores

1. Cache

#### History of Intel Processors[^Intel Processors Source]

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

### Memory 

### GPU 

### Storage Devices

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

[^Intel Processors Source]: [Intel Processors](https://www.intel.com/pressroom/kits/quickreffam.htm#i486), 
[i7-950](https://www.intel.com/content/www/us/en/products/sku/37150/intel-core-i7950-processor-8m-cache-3-06-ghz-4-80-gts-intel-qpi/specifications.html), 
[i7-3970x](https://ark.intel.com/content/www/us/en/ark/products/70845/intel-core-i7-3970x-processor-extreme-edition-15m-cache-up-to-4-00-ghz.html),
[i7-6700](https://www.intel.com/content/www/us/en/products/sku/88196/intel-core-i76700-processor-8m-cache-up-to-4-00-ghz/specifications.html)

[^OS_Nomenclature]: OS is short for operating system. There are MacOS, ChromeOS, HarmonyOS, etc.

[^Windows_On_Mac]: Macbook made before 2020 running on intel cpu had the option to dual boot windows. 
It is practically impossible to run any system except MacOS for laptops made after 2020 with a M series chip, because Apple is deliberately untransparent on the design of M series chips to hinder developers of other operating system to adapt to Apple products. [Asahi Linux](https://asahilinux.org) seems to be the only barely working exception. 

[^OS Concept]: Page 1, Silberschatz, A., Galvin, P.B. and Gagne, G. (2018). Operating system concepts. [online] Hoboken, N.J Wiley. Available at: [https://os.ecci.ucr.ac.cr/slides/Abraham-Silberschatz-Operating-System-Concepts-10th-2018.pdf](https://os.ecci.ucr.ac.cr/slides/Abraham-Silberschatz-Operating-System-Concepts-10th-2018.pdf).

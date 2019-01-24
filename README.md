# Operation Homelab

This is a guide to getting started building a home lab environment to further all things "cyber" skills. A "home lab" can mean anything from the right software to host a few virtual machines, all the way to purchasing hardware to practice with basic NSM infrastructure. Worst case scenario: this provides a well structured link farm to assist the development of driven learners.  

The intent for this project is to be community driven and continually updated. [Pull requests](https://help.github.com/articles/about-pull-requests/) are welcome and encouraged!


##### Table of Contents

- [Hypervisors](#hypervisors) - choosing the right virtualization platform
- [VM Install Guides](#vm-install-guides) - links to install instructions
- [Core Skillsets](#core-skillsets) - logical prioritization of what to learn


## Hypervisors

The only way to become skilled with \*NIX systems is to **use** it.  The first step in becoming more familiar with the environment is setting up a local VM (virtual machine).  This can be accomplished by using a Type 1 or Type 2 [hypervisor](https://youtu.be/VtXNIy_noWg).  Let's keep things as simple as possible and start with a Type 2, which can be installed on any common host OS.

### Beginner - Type 2 Hypervisors

> So which one should I pick to get started using VMs?
The answer to this question begins with what your base operating system is.  

#### Windows 10

1. [Hyper-V](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)

This should be the starting point for virtualization in Windows 10 Pro / Enterprise. It's built in and just needs to be enabled.  VMWare Workstation and Virtualbox are both options, but are not the path of least resistance.

#### macOS

Mac users have 2 options:

1. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- free
- cross-platform
- configuration can be very hands-on, but good for learning

2. [VMware Fusion](https://www.vmware.com/products/fusion.html)
- not free (~$80)
- lots of black magic to make things easier
- network stack can be "brittle"

#### Linux

Even if you've made the jump to running a baremetal install of Linux (Centos or Fedora plz), you still need the ability to run VMs.

1. [Boxes](https://wiki.gnome.org/Apps/Boxes)
- if you're in a Gnome desktop environment **_cough_** **_cough_** **_Centos or Fedora_** the absolute easiest way is to use this wrapper to `virt-manager`
- free

2. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- free
- cross-platform
- configuration can be very hands-on, but good for learning

3. [VMware Workstation Pro](https://www.vmware.com/products/workstation-pro.html)
- not free (~$80)


### Advanced - ESXi

Once you've gained some experience and have the hardware to dedicate to **only** hosting VMs, the next logical step is to install [ESXi](https://my.vmware.com/en/web/vmware/evalcenter?p=free-esxi6).  It's a free (VMware account required) Type 1 hypervisor that is very prolific and a lot of support information available.


## VM Install Guides

- install Centos/7 on windows with Hyper-V - [link](https://linuxhint.com/install_centos_hyperv/)
- Centos/7 install instructions from RockNSM - [link](https://rocknsm.gitbooks.io/rocknsm-guide/content/build/install.html)


## Core Skillsets

Listed are the primary skill to focus on when starting out:

- RHEL family OS design
- basic Bash usage
- ssh operations
- systemd
- firewalld
- disk management

---

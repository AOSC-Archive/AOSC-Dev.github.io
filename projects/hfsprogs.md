hfsprogs at AOSC
#hfsprogs, the userspace hfs utils for Linux
[hfsprogs](https://github.com/AOSC-Dev/hfsprogs) mainly contains mkfs and fsck for HFS and HFS+ file systems.
<comment>The title override at the top of file will be automatically cleared by the preprocessor.
TODOs include adding a fork me on GitHub button.</comment>

The HFS+ file system used by Apple Computer for their Mac OS is
supported by the Linux kernel.  Apple provides mkfs and fsck for
HFS+ with the Unix core of their operating system, Darwin.

This package is a port of Apple's tools for HFS+ filesystems.

For users, HFS+ seems to be a good compromise to carry files between
MacOS X and Linux Machines, as HFS+ doesn't suffer the problems ofFAT32 like:
- huge space waste (in slack space as devices grow faster);
- ability to create files that are more than 4GB in size (especially good for those
working with multimedia and that need to carry large ISO files);
- ability to use case preserving (and even sensitivity!);
- ability to use uid's and gid's on the filesystem.

Users in general can enjoy such benefits since it is expected to have
more HFS+ filesystems in use, as Apple has announced Macintoshes for
x86-64, besides the filesystem being already supported by PowerPC
systems since the beginning.

Originally [diskdev-cmds](https://opensource.apple.com/tarballs/diskdev_cmds/).<br />
- *Change `tarballs` to `source` if you want to browse the source.*

<div class="github-fork-ribbon-wrapper left-bottom"><div class="github-fork-ribbon"><a href="https://github.com/AOSC-Dev/hfsprogs/">Fork me on GitHub</a></div></div>
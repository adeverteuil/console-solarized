.. -*- coding: utf-8 -*-

===========================================
Solarized Colorscheme for the Linux Console
===========================================

:Author: Alexandre de Verteuil
:Contact: alexandre.deverteuil@gmail.com
:Date: 2013-09-21

Introduction
============

This is a port of the Solarized colorscheme for the
Linux console. Developed by Alexandre de Verteuil
alexandre.deverteuil@gmail.com.

Original Solarized colorscheme developed by: **Ethan Schoonover**.

See the `Solarized homepage`_ for screenshots, details and colorscheme
versions for Vim, Mutt, popular terminal emulators and other
applications.

.. _Solarized homepage: http://ethanschoonover.com/solarized

:Main Solarized project page: http://ethanschoonover.com/solarized
:Main Solarized code repository: https://github.com/altercation/solarized

Installing
==========

Method 1: ``/etc/issue``
------------------------

1. Move ``/etc/issue`` to ``/etc/issue.backup``.
2. Write the output of ``console-solarized`` to ``/etc/issue``::

    # console-solarized > /etc/issue

   You may get better results if you put the clear screen escape sequences first::

    # clear > /etc/issue
    # console-solarized >> /etc/issue
    # cat /etc/issue.backup >> /etc/issue

``console-solarized`` sends console escape sequences to stdout. By default, the output changes the color palette to Solarized dark. For Solarized light, add the "``light``" command line parameter::

    # console-solarized light >> /etc/issue

Method 2: systemd unit
----------------------

.. Note::

    This installation procedure is for a systemd_ managed Linux
    distribution such as ArchLinux_.

.. _systemd: http://en.wikipedia.org/wiki/Systemd
.. _ArchLinux: https://www.archlinux.org/

1. Copy the source files to the directories indicated by the following table.
   You should edit ``console-solarized.conf`` if you wish to use the light theme.
   The dark theme is enabled by default.

   ===========================  =====================================  ====
   File list                    Location to copy to                    Edit
   ===========================  =====================================  ====
   console-solarized            /usr/local/bin/
   console-solarized@.service   /etc/systemd/system/
   solarized.conf               /etc/systemd/system/getty@.service.d/
   console-solarized.conf       /etc/                                  yes
   ===========================  =====================================  ====

2. Run ``systemctl daemon-reload`` as root to make systemd reload the
   configuration files.

**Bug**: It should be written in C.

Contributing
============

Pull requests for installation instructions on other systems,
portability, corrections, and such are welcome!

Copying
=======

Copyright © 2011 Ethan Schoonover

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

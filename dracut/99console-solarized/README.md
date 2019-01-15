## installation

1. copy `99console-solarized` dir into /usr/lib/dracut/modules.d


2. module is disabled by default, to enable  

  create /etc/dracut.conf.d/99-console-solarized.conf with the following contents:

```bash
add_dracutmodules+=" console-solarized "
```

3. Rebuild initrd



To disable setting colors on boot one can pass `rd.solarized=off` to kernel.

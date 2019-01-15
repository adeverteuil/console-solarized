#!/bin/bash

# called by dracut
check() {
    require_binaries console-solarized || return 1
    # don't enable by default
    return 255
}

# called by dracut
depends() {
    return 0
}

# called by dracut
install() {
	inst /etc/console-solarized.conf
	dracut_install console-solarized

	# plymouth runs at 10, we want to run a bit later.
	inst_hook pre-trigger 11 "${moddir}/console-solarized-pretrigger.sh"
}

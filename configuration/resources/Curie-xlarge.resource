#----------------------------------------------------------------------
# Copyright 2012 EPCC, The University of Edinburgh
#
# This file is part of bolt.
#
# bolt is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# bolt is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with bolt.  If not, see <http://www.gnu.org/licenses/>.
#----------------------------------------------------------------------
#
# Configuration file for Curie Extra Large nodes
#
[system info]
system name:        Curie-xlarge
system description: S6010 bullx nodes, 512 GB Mem
job script shell:   #!/bin/bash
batch system:       SLURM_Bull
total nodes:        90
account code required: yes
default account code: yourProjectID


[node info]
sockets per node:      16
dies per socket:       1
cores per die:         8
threads per core:      1
# Exclusive node access if 'set -x' is set, see below
exclusive node access: no
accelerator type:

[general parallel jobs]
parallel jobs:              True
hybrid jobs:                True
maximum tasks:              11520
minimum tasks:              1
maximum job duration:       12
parallel time format:       seconds
preferred task stride:      1
parallel reservation unit:  tasks
number of tasks option:     -n
number of nodes option:     
tasks per node option:
tasks per die option:
tasks stride option:        -c
queue name:                 -xlarge
use batch parallel options: True

[distributed-mem jobs]
parallel job launcher:      ccc_mprun
additional job options:
script preamble commands:   cd ${BRIDGE_MSUB_PWD}
                            set -x
executable job options:
script postamble commands:

[shared-mem jobs]
parallel job launcher:     
additional job options:
script preamble commands: cd ${BRIDGE_MSUB_PWD}  
                          set -x
executable job options:
script postamble commands:

[hybrid jobs]
parallel job launcher:      ccc_mprun
additional job options:
script preamble commands:   cd ${BRIDGE_MSUB_PWD}
                            set -x
executable job options:
script postamble commands:

[serial jobs]
serial jobs:               True
serial job launcher:       
maximum job duration:      12
serial time format:        seconds
queue name:                test
additional job options:   
script preamble commands:  cd ${BRIDGE_MSUB_PWD}
                           set -x
script postamble commands:


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
# Configuration file for Curie GPU nodes
#
[system info]
system name:        Curie-GPU
system description: bullx B505
job script shell:   #!/bin/bash --login
batch system:       SLURM_Bull
total nodes:        144
account code required: yes
default account code: yourProjectID


[node info]
sockets per node:      2
dies per socket:       1
cores per die:         4
threads per core:      1
exclusive node access: yes
accelerator type:      NVidia M2090

[general parallel jobs]
parallel jobs:              True
hybrid jobs:                True
maximum tasks:              288
minimum tasks:              1
maximum job duration:       12
parallel time format:       seconds
preferred task stride:      1
parallel reservation unit:  tasks
number of tasks option:     -n
number of nodes option:     -N
tasks per node option:
tasks per die option:
tasks stride option:        
queue name:                 hybrid
use batch parallel options: False

[distributed-mem jobs]
parallel job launcher:      ccc_mprun
additional job options:
script preamble commands:   cd ${BRIDGE_MBSUB_PWD}
                            set -x
                            module load cuda
executable job options:
script postamble commands:

[shared-mem jobs]
parallel job launcher:      
additional job options:
script preamble commands:  not available
executable job options:
script postamble commands:
 
[hybrid jobs]
parallel job launcher:      
additional job options:
script preamble commands:   not available
executable job options:
script postamble commands:


[serial jobs]
serial jobs:               True
maximum job duration:      12
serial time format:        seconds
queue name:               hybrid
additional job options:   cd ${BRIDGE_MBSUB_PWD}
                          set -x
	                  module load cuda

script preamble commands:
script postamble commands:


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
system description: bullx B chassis
job script shell:   #!/bin/bash --login
batch system:       SLURM_Bull
total nodes:        144
account code required: no
default account code:


[node info]
sockets per node:      2
dies per socket:       1
cores per die:         8
exclusive node access: yes
accelerator type:      NVidia M2090

[parallel jobs]
parallel jobs:              True
hybrid jobs:                True
maximum tasks:              288
minimum tasks:              1
maximum job duration:       12
parallel time format:       seconds
preferred task stride:      1
parallel reservation unit:  tasks
parallel job launcher:      ccc_mprun
number of tasks option:     -n
number of nodes option:     -N
tasks per node option:
tasks per die option:
tasks stride option:        -c
queue name:
use batch parallel options: False
additional job options:
script preamble commands:
script postamble commands:

[serial jobs]
serial jobs:               True
maximum job duration:      12
serial time format:        seconds
queue name:
additional job options:
script preamble commands:
script postamble commands:


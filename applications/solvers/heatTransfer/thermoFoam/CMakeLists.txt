#
#   Copyright (C) 2014-15 Chris Copsey
#   
#   This file is part of ccFOAM.
#
#   ccFOAM is free software: you can redistribute it and/or modify it under the
#   terms of the GNU General Public License as published by the Free Software
#   Foundation, either version 3 of the License, or (at your option) any later
#   version.
#
#   ccFOAM is distributed in the hope that it will be useful, but WITHOUT ANY
#   WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
#   FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
#   details.
#
#   You should have received a copy of the GNU General Public License along
#   with ccFOAM.  If not, see <http://www.gnu.org/licenses/>.
#

set(SOURCES
  thermoFoam.C
)

set(LIBRARIES
  libOpenFOAM
  libfiniteVolume
  libsampling
  libmeshTools
  libfvOptions
  libfluidThermophysicalModels
  libradiationModels
  libspecie
  libcompressibleTurbulenceModel
  libcompressibleRASModels
  libcompressibleLESModels
)

include(include.cmake)
include(../../../../src/OpenFOAM/include.cmake)
include(../../../../src/OSspecific/POSIX/include.cmake)
include(../../../../src/finiteVolume/include.cmake)
include(../../../../src/sampling/include.cmake)
include(../../../../src/meshTools/include.cmake)
include(../../../../src/fvOptions/include.cmake)
include(../../../../src/thermophysicalModels/basic/include.cmake)
include(../../../../src/thermophysicalModels/radiationModels/include.cmake)
include_directories(../../../../src/turbulenceModels)
include(../../../../src/turbulenceModels/compressible/turbulenceModel/include.cmake)
include(../../../../src/turbulenceModels/compressible/RAS/include.cmake)
include(../../../../src/turbulenceModels/compressible/LES/include.cmake)
include(../../../../src/turbulenceModels/LES/LESdeltas/include.cmake)

add_executable(thermoFoam ${SOURCES})

target_link_libraries(thermoFoam ${LIBRARIES})

install(TARGETS thermoFoam DESTINATION applications OPTIONAL)

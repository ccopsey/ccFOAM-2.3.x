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
  icoUncoupledKinematicParcelDyMFoam.C
)

set(LIBRARIES
  libOpenFOAM
  liblagrangian
  liblagrangianIntermediate
  liblagrangianTurbulence
  libthermophysicalFunctions
  libfluidThermophysicalModels
  libspecie
  libradiationModels
  libincompressibleRASModels
  libincompressibleLESModels
  libincompressibleTransportModels
  libfiniteVolume
  libmeshTools
  libregionModels
  libsurfaceFilmModels
  libdynamicMesh
  libdynamicFvMesh
  libtopoChangerFvMesh
)

include(include.cmake)
include(../../../../../src/OpenFOAM/include.cmake)
include(../../../../../src/OSspecific/POSIX/include.cmake)
include_directories(..)
include(../../../../../src/finiteVolume/include.cmake)
include(../../../../../src/lagrangian/basic/include.cmake)
include(../../../../../src/lagrangian/intermediate/include.cmake)
include(../../../../../src/thermophysicalModels/specie/include.cmake)
include(../../../../../src/thermophysicalModels/basic/include.cmake)
include(../../../../../src/thermophysicalModels/reactionThermo/include.cmake)
include(../../../../../src/thermophysicalModels/radiationModels/include.cmake)
include_directories(../../../../../src/turbulenceModels/incompressible/turbulenceModel)
include_directories(../../../../../src/transportModels)
include_directories(../../../../../src/transportModels/incompressible/singlePhaseTransportModel)
include(../../../../../src/meshTools/include.cmake)
include(../../../../../src/regionModels/regionModel/include.cmake)
include(../../../../../src/regionModels/surfaceFilmModels/include.cmake)
include(../../../../../src/dynamicMesh/include.cmake)
include(../../../../../src/dynamicFvMesh/include.cmake)

add_executable(icoUncoupledKinematicParcelDyMFoam ${SOURCES})

target_link_libraries(icoUncoupledKinematicParcelDyMFoam ${LIBRARIES})

install(TARGETS icoUncoupledKinematicParcelDyMFoam DESTINATION applications OPTIONAL)

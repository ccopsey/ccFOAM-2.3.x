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

include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/turbulenceModel/.)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/turbulenceModel/derivedFvPatchFields/externalCoupledTemperatureMixed)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/turbulenceModel/derivedFvPatchFields/externalWallHeatFluxTemperature)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/turbulenceModel/derivedFvPatchFields/temperatureCoupledBase)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/turbulenceModel/derivedFvPatchFields/thermalBaffle1D)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/turbulenceModel/derivedFvPatchFields/totalFlowRateAdvectiveDiffusive)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/turbulenceModel/derivedFvPatchFields/turbulentHeatFluxTemperature)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/turbulenceModel/derivedFvPatchFields/turbulentTemperatureCoupledBaffleMixed)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/turbulenceModel/derivedFvPatchFields/turbulentTemperatureRadCoupledMixed)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/turbulenceModel/derivedFvPatchFields/wallHeatTransfer)
include_directories(${PROJECT_SOURCE_DIR}/src/turbulenceModels/compressible/turbulenceModel/laminar)

# ------------------------------------------------------------------------------
#   Copyright 2019 CNRS
#
#   Author: Fanny Risbourg
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU Lesser General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU Lesser General Public License for more details.
#
#   You should have received a copy of the GNU Lesser General Public License
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.
#-------------------------------------------------------------------------------

# Try to find GUROBI
# in standard prefixes and in ${GUROBI_DIR}
# Once done this will define
#  GUROBI_FOUND - System has GUROBI
#  GUROBI_INCLUDE_DIRS - The GUROBI include directories
#  GUROBI_LIBRARIES - The libraries needed to use GUROBI


FIND_PATH(GUROBI_INCLUDE_DIR 
          NAMES gurobi_c++.h
          PATHS "$ENV{GUROBI_DIR}/include")

FIND_LIBRARY(GUROBI_LIBRARY 
             NAMES gurobi91
             PATHS "$ENV{GUROBI_DIR}/lib")
 
FIND_LIBRARY(GUROBI_CXX_LIBRARY 
             NAMES gurobi_c++
             PATHS "$ENV{GUROBI_DIR}/lib")

SET(GUROBI_INCLUDE_DIRS "${GUROBI_INCLUDE_DIR}" )
SET(GUROBI_LIBRARIES "${GUROBI_LIBRARY};${GUROBI_CXX_LIBRARY}" )

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GUROBI  DEFAULT_MSG GUROBI_LIBRARY GUROBI_CXX_LIBRARY GUROBI_INCLUDE_DIR)
MARK_AS_ADVANCED(GUROBI_INCLUDE_DIR GUROBI_LIBRARY GUROBI_CXX_LIBRARY)
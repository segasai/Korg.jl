module Korg
_data_dir = joinpath(@__DIR__, "../data")

include("CubicSplines.jl")             # 1D cubic Splines with arbitrarily spaced knots
include("lazy_multilinear_interpolation.jl") # linear interpolation with minimal memory overhead
include("constants.jl")                # physical constants
include("atomic_data.jl")              # symbols and atomic weights
include("isotopic_data.jl")            # abundances and nuclear spins
include("wavelengths.jl")              # Wavelengths type
include("species.jl")                  # types for chemical formulae and species
include("read_statmech_quantities.jl") # approximate Us, Ks, chis
include("linelist.jl")                 # parse linelists, define Line type
include("line_absorption.jl")          # opacity, line profile, voigt function
include("hydrogen_line_absorption.jl") # hydrogen lines get special treatment
include("autodiffable_conv.jl")        # wrap DSP.conv to be autodiffable
include("statmech.jl")                 # statistical mechanics, molecular equilibrium
include("atmosphere.jl")               # parse model atmospheres
include("RadiativeTransfer/RadiativeTransfer.jl") # radiative transfer formal solution
include("utils.jl")                    # functions to apply LSF, vac<->air wls, etc.
include("ContinuumAbsorption/ContinuumAbsorption.jl") # Define continuum absorption functions.
include("molecular_cross_sections.jl") # precompute molecular cross-sections.
include("abundances.jl")               # A(X), etc
include("synthesize.jl")               # top-level API
include("prune_linelist.jl")           # select strong lines from a linelist
include("fit.jl")                      # routines to infer stellar params from data
include("qfactors.jl")                 # formalism to compute theoretical RV precision

export synthesize, read_linelist, read_model_atmosphere, interpolate_marcs, format_A_X
end # module

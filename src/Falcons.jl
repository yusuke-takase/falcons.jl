module Falcons

using ReferenceFrameRotations
using Healpix
using LinearAlgebra
using Base.Threads
using StaticArrays
using ProgressMeter
using JSON
using DataFrames
using SkyCoords
using Printf

include("./function/scanning.jl")
include("./function/imo.jl")
include("./function/systematics.jl")
include("./function/pointing_systematics.jl")

export vec2ang_lbsim_phi, quaternion_rotator, imo2scan_coordinate, gen_ScanningStrategy_imo, ScanningStrategy_imo, imo_name!, imo_telescope!, imo_channel!, thetaPhi2RaDec, ecliptic2galactic!, Imo, gen_imo, get_channel_list, get_channel_info
export ScanningStrategy, gen_ScanningStrategy, get_pointings, get_pointing_pixels, period2rpm, get_pointings_tuple, pixtod2hitmap, angtod2hitmap, convert_maps, rpm2angfreq, rpm2period, show_ss, ecliptic2galactic, pointings, normarize!, get_instrument_info, get_pol_angle
export get_psiDataBase, get_psi_time_DataBase, ScanningStrategy2MapInfo, set_input, orientation_func, get_hn_map, ScanningStrategy2map, binned_mapmake

export arcmin2rad, pointings, interp_signal, true_signal, normarize!, get_pointings_offset, gen_signalfield, tayler_expanded_signal, get_det, quat, OffsetAngle, sim_pointing_systematics

end

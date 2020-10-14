using Printf, JuMP, DelimitedFiles, Mosek, MosekTools, LinearAlgebra

include("SDP_functions.jl")


function solve_sdp(INSTANCE_NAME, FORMULATION, DATA_PATH)
    REPO = "OPF"
    objscale = 4 #0 if no scaling
    originalSTDOUT = stdout
    outpath = joinpath("Mosek_runs", INSTANCE_NAME)
    isdir(outpath) || mkpath(outpath)
    log_file = "$(INSTANCE_NAME)_$(FORMULATION).log"
    outlog = open(joinpath(outpath,log_file), "w")
    redirect_stdout(outlog)
    println("objscale : 10^(-$objscale) \n")
    Xoptimal, obj, status, time, mem = sdp_model_solver_to_specify(INSTANCE_NAME, FORMULATION, DATA_PATH, REPO, Mosek.Optimizer, 10.0^(-objscale))
    # println("time : $time \n memory : $mem")
    close(outlog)
    redirect_stdout(originalSTDOUT)
    time, nb_iter, objective, m, nlc = read_mosek_log(joinpath(outpath, log_file))
    return time, nb_iter
end

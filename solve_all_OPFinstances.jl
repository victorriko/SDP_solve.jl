include("solve_SDP.jl")

DATA_PATH =  joinpath("data_sdp")

instances = [
"case1354pegase","case1888rte", "case1951rte", "case_ACTIVSg2000", "case2383wp","case2736sp", "case2737sop", "case2746wop",
"case2746wp", "case2848rte", "case2868rte", "case2869pegase", "case3012wp", "case3120sp", "case3375wp","case6468rte",
"case6470rte", "case6495rte", "case6515rte",  "case9241pegase","case_ACTIVSg10k", "case13659pegase", "case_ACTIVSg25k"]

instances = ["case14"]

FORMULATIONS = ["NO_BLOCKS", "cholesky"]

isdir("Mosek_runs") || mkpath("Mosek_runs")
f = open("Mosek_runs\\summary_runs_all_Matpower.csv", "w")
write(f, "Instance ; ")
for FORMULATION in FORMULATIONS
    write(f, "$FORMULATION nb iter ; $FORMULATION time ;")
end
write(f, "\n")
for INSTANCE in instances
    println(INSTANCE)
    write(f, "$INSTANCE ; ")
    for FORMULATION in FORMULATIONS
        time, nb_iter = solve_sdp(INSTANCE, FORMULATION, DATA_PATH)
        write(f, "$nb_iter ; $time ; ")
    end
    write(f, "\n")
end
close(f)

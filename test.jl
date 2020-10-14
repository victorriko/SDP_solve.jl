include("solve_SDP.jl")

DATA_PATH = joinpath("data_sdp")
INSTANCE_NAME = "case30"
FORMULATION = "cholesky"
time, nb_iter = solve_sdp(INSTANCE_NAME, FORMULATION, DATA_PATH)


# instances = [
# "case1354pegase","case1888rte", "case1951rte", "case_ACTIVSg2000", "case2383wp","case2736sp", "case2737sop", "case2746wop",
#  "case2746wp", "case2848rte", "case2868rte", "case2869pegase", "case3012wp", "case3120sp", "case3375wp","case6468rte",
#  "case6470rte", "case6495rte", "case6515rte",  "case9241pegase","case_ACTIVSg10k", "case13659pegase", "case_ACTIVSg25k"]
#
#
#

# formulations = ["AMD", "cholesky", "cholesky_fusion_Dan_nb_max_10%", "cholesky_fusion_Mosek_linearreg_log10",
#  "cholesky_fusion_Mosek_linearreg_nolog10", "cholesky_fusion_Mosek_stop0_linearreg_nolog10", "cholesky_fusion_paths_3_size_max_50",
#   "cholesky_fusion_size_max_20%_x1", "cholesky_fusion_size_max_50", "cholesky_fusion_size_max_50_x1", "cholesky_fusion_size_max_50_x2",
#    "cholesky_fusion_size_max_50_x3", "cholesky_fusion_size_max_50_x4", "cholesky_fusion_size_max_50_x5",
#    "cholesky_fusion_size_max_50_x6", "cholesky_fusion_size_max_size_max_clique_x1", "cholesky_real", "Dan_fusionPNE_size_max_20_x1",
#    "Dan_fusionPNE_size_max_20_x2", "Dan_fusionPNE_size_max_20_x3", "Dan_fusionPNE_size_max_30", "Dan_fusionPNE_size_max_30_x1",
#    "Dan_fusionPNE_size_max_30_x2", "Dan_fusionPNE_size_max_30_x3", "Dan_fusionPNE_size_max_30_x4", "Dan_fusionPNE_size_max_30_x5",
#     "Dan_fusionPNE_size_max_30_x6", "Dan_fusionPNE_size_max_60", "Dan_fusionPNE_size_max_60_x1", "Dan_fusionPNE_size_max_60_x2",
#     "Dan_fusionPNE_size_max_60_x3", "Dan_fusionPNE_size_max_60_x4", "Dan_fusionPNE_size_max_60_x5", "Dan_fusionPNE_size_max_60_x6",
#      "fusion_PNE_objDan_size_max_60_x1", "fusion_PNE_objDan_size_max_60_x2", "fusion_PNE_objDan_size_max_60_x3",
#      "fusion_PNE_objDan_size_max_60_x4", "fusion_PNE_objDan_size_max_60_x5", "fusion_PNE_objDan_size_max_60_x6",
#       "MaxD", "MD", "MD_real", "Metis", "RandomD", "cholesky_MIX1it_merging","cholesky_MIX2it_merging", "cholesky_MIX3it_merging"
#        "cholesky_MIX4it_merging", "cholesky_MIX5it_merging"]
#

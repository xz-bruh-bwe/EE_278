set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {array_add} -view {{array_add_dataflow_ana.wcfg}} -tclbatch {array_add.tcl} -protoinst {array_add.protoinst}

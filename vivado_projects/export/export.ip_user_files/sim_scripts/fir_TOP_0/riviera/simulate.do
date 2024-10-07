transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+fir_TOP_0  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fir_TOP_0 xil_defaultlib.glbl

do {fir_TOP_0.udo}

run 1000ns

endsim

quit -force

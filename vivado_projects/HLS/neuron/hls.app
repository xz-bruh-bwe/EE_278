<project xmlns="com.autoesl.autopilot.project" top="neuron" name="neuron" projectType="C/C++">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="HLS_Code/neuron.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="HLS_Code/neuron.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../../HLS_Code/neuron_test.c" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../../HLS_Code/out.gold.dat" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="neuron" status="active"/>
    </solutions>
</project>


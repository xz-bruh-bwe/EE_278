<project xmlns="com.autoesl.autopilot.project" top="fir" name="fir" projectType="C/C++">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="HLS_Code/fdacoefs.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="HLS_Code/fir.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="HLS_Code/fir.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../../HLS_Code/fir_test.c" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../../HLS_Code/out.gold.dat" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="fir_solution" status="active"/>
    </solutions>
</project>


<project xmlns="com.autoesl.autopilot.project" name="adap_fir_proj" top="adap_fir" projectType="C/C++">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="HLS_Code/adap_fir.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="HLS_Code/adap_fir.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../../HLS_Code/adap_fir_tb.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="adap_fir" status="active"/>
    </solutions>
</project>


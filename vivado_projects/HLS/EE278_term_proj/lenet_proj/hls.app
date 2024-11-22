<project xmlns="com.autoesl.autopilot.project" name="lenet_proj" top="lenet_predict" projectType="C/C++">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="lenet_main.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="lenet_support.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="lenet_support.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../../lenet_testbench.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="lenet_predict" status="active"/>
    </solutions>
</project>


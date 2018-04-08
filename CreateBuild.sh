#!/usr/bin/env bash
echo "请输入要创建的文件名:"
fileName=build1.xml
echo 默认文件名为: ${fileName}（Press Enter key to accept default value）
read -p "Input your fileName (Press Enter key to accept default value): " INPUT
if [ x$INPUT != x ]; then
    fileName=$INPUT
fi
echo 您的文件名为:$fileName
touch $fileName

echo "请输入您的工程依赖的jar包存放目录:"
lib_floder=lib
echo 默认存放目录为: ${lib_floder}（Press Enter key to accept default value）
read -p "Input your fileName (Press Enter key to accept default value): " INPUT
if [ x$INPUT != x ]; then
    lib_floder=$INPUT
fi
echo "您的工程依赖的jar包存放目录为:${lib_floder}"

echo "请输入您的输出编译文件目录:"
output_floder=classes
echo 默认输出编译文件目录为: ${output_floder}（Press Enter key to accept default value）
read -p "Input your fileName (Press Enter key to accept default value): " INPUT
if [ x$INPUT != x ]; then
    output_floder=$INPUT
fi
#if [ ! -d "./${output_floder}" ];then
#    mkdir ${output_floder}
#fi
echo 您的输出编译文件目录为:${output_floder}




echo "请输入您的源文件目录:"
src_floder=src
echo 默认源文件目录为: ${src_floder}（Press Enter key to accept default value）
read -p "Input your fileName (Press Enter key to accept default value): " INPUT
if [ x$INPUT != x ]; then
    src_floder=$INPUT
fi
echo "您的源文件目录为:${src_floder}"


echo "请输入您的测试文件目录:"
test_floder=test
echo 默认测试文件目录为: ${test_floder}（Press Enter key to accept default value）
read -p "Input your fileName (Press Enter key to accept default value): " INPUT
if [ x$INPUT != x ]; then
    test_floder=$INPUT
fi
echo "您的测试文件目录为:${test_floder}"



echo "请输入您的测试报告文件目录:"
report_floder=report
echo 默认测试报告文件目录为: ${report_floder}（Press Enter key to accept default value）
read -p "Input your fileName (Press Enter key to accept default value): " INPUT
if [ x$INPUT != x ]; then
    report_floder=$INPUT
fi
echo "您的测试报告文件目录为:${report_floder}"


#向xml文件中写入内容
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" >${fileName}
echo '<project name="ant and junit" default="test auot junit and report" basedir=".">' >>${fileName}
echo "<property name=\"lib.dir\" value=\"${lib_floder}\"/>" >>${fileName}
echo "<path id=\"classpath\">" >>${fileName}
echo '<fileset dir="${lib.dir}" includes="**/*.jar"/>' >>${fileName}
echo  "</path>" >>${fileName}
echo '' >>${fileName}

echo " <property name=\"output folder\" value=\"${output_floder}\"/>" >>${fileName}
echo " <property name=\"src folder\" value=\"${src_floder}\"/>" >>${fileName}
echo "<property name=\"test folder\" value=\"${test_floder}\"/>" >>${fileName}
echo "<property name=\"report folder\" value=\"${report_floder}\"/>" >>${fileName}
echo '
        <target name="clean">
            <delete dir="report"/>
            <echo>清除测试报告文件 成功!</echo>
        </target>

        <target name="compile init">
            <delete dir="classes"/>
            <mkdir dir="${output folder}"/>
            <echo>创建编译文件夹 成功!</echo>
        </target>

    <target name="report init" depends="clean">
        <mkdir dir="${report folder}"/>
            <echo>创建测试报告文件夹 成功!</echo>
        </target>

        <target name="compile" depends="compile init">
            <javac srcdir="${src folder}" destdir="${output folder}" classpathref="classpath" />
            <echo>项目源文件编译 成功!</echo>
        </target>

        <target name="test compile" depends="report init">
            <javac srcdir="${test folder}" destdir="${output folder}" classpathref="classpath"/>
            <echo>项目测试文件编译 成功!</echo>
        </target>

        <target name="all compile" depends="compile, test compile">
        </target>

        <target name="test auot junit and report" depends="all compile">
            <junit printsummary="on" fork="true" showoutput="true">
                <classpath>
                    <fileset dir="${lib.dir}" includes="**/*.jar"/>
                    <pathelement path="${output folder}"/>
                </classpath>
                <formatter type="xml"/>
                <batchtest todir="${report folder}">
                    <fileset dir="${output folder}">
                        <include name="**/*Test*.*"/>
                    </fileset>
                </batchtest>
            </junit>
            <junitreport todir="${report folder}">
                <fileset dir="${report folder}">
                    <include name="TEST-*.xml"/>
                </fileset>
                <report format="frames" todir="${report folder}"/>
            </junitreport>
        </target>
    </project>
' >>${fileName}
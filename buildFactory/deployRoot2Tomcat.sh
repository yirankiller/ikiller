TomcatHome="/data/apache/apache-tomcat-7.0.28"
Ikiller="/data/gits/github/ikiller"
cd ${TomcatHome}
echo "clean cache ..."
rm -rf logs work temp
cd ./webapps
rm -rfv ROOT ROOT.war
cd ${Ikiller}
echo "Build ..."
mvn2 clean install
echo "copy ..."
cp -vf ./yirankiller-web/yirankiller-web-IJFY-ROOT.war/target/ROOT.war ${TomcatHome}/webapps
echo "start tomcat"
cd ${TomcatHome}/bin
sh catalina.sh run
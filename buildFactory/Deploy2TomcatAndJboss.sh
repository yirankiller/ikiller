#LogPath="${CurrentDir}/InitializeTrunkAll.log"
ProjectPath="/data/gits/github/ikiller"
WebProjcetPath="/data/gits/github/ikiller/yirankiller-web"

TomcatHome="/data/apache/apache-tomcat-7.0.28"
JbossHome="/data/jbosses/ikiller"
JbossHome_deploy="/data/jbosses/ikiller/server/default/deploy"
echo "ready...go"
cd ${ProjectPath}
mvn2 clean install

#clean tomcat webapp and cache
echo "clean tomcat webapp and cache"
cd ${TomcatHome}
rm -rf logs work webapps/yirankiller-web webapps/yirankiller-web.war

#clean jboss5 cache
echo "clean jboss cache"
cd ${JbossHome}/server/default
rm -rf data log work tmp deploy/yirankiller-util.jar

echo "copy 2 tomcat. "
cp -vf ${WebProjcetPath}/yirankiller-web.war/target/yirankiller-web.war ${TomcatHome}/webapps

echo "copy 2 jboss.5. "
cp -vf ${ProjectPath}/yirankiller-util/yirankiller-util.jar/target/yirankiller-util.jar ${JbossHome_deploy}
echo "SUCCESS"

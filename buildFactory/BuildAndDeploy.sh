if [ $# != 2 ] ;
then
	echo "Usage packageAndDeploy.sh porject jboss1 "
else
	echo "Starting to package and deploy for project " $1 ", will put in " $2
echo "checking out..."
svn up
echo "building..."
cd $1
mvn clean install
cd ..
echo "copying packages"
cp -v greenback-security/target/greenback-security.jar /data/jbosses/$1/server/default/deploy
cp -v greenback-iha/greenback-iha.war/target/greenback-iha.war /data/jbosses/$1/server/default/deploy
cp -v greenback-backend/greenback-backend.ear/target/greenback-backend.ear /data/jbosses/$1/server/default/deploy
cp -v greenback-mcl/greenback-mcl.ear/target/greenback-mcl.ear /data/jbosses/$1/server/default/deploy
cp -v greenback-ocr/greenback-ocr.ear/target/greenback-ocr.ear /data/jbosses/$1/server/default/deploy
cp -v greenback-web/greenback-web.ear/target/greenback-web.ear /data/jbosses/$2/server/default/deploy

echo "done, please restart jboss to make sure all package is deployed"

fi
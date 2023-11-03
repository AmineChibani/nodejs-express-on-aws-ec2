
sudo chmod -R 777 /home/ec2-user/express-app

cd /home/ec2-user/express-app

#add npm and to path 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" #load nvm
[ -s "$NVM_DIR/bash_completion"] && \. "$NVM_DIR/bash_completion" #loads nvm bash_completion

#install nodemodules
npm install

#start our node app in the background 
node app.js > app.out.log 2> app.err.log < /dev/null &
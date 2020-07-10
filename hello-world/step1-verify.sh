cd /root/my-app && \
echo "import React from 'react'; function AppFake(){return(<a>I am learning react</a>)} export default AppFake;" > /root/my-app/src/AppFake.js && \
cat /root/my-app/src/App.test.js | sed 's/App/AppFake/g' > /root/my-app/src/AppFake.test.js && \
CI=true npm test /root/my-app/src/AppFake.test.js -- --json --outputFile=fake-test-run.json 

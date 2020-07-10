cd /root/my-app && \
echo "import React from 'react'; function AppFake(){return(<a>I am learning react</a>)} export default AppFake;" > /root/my-app/src/AppFake.js && \
cat /root/my-app/src/App.test.js | sed 's/App/AppFake/g' > /root/my-app/src/AppFake.test.js && \
npm test /root/my-app/src/AppFake.test.js -- --useStderr=false --silent --watchAll=false --json --outputFile=fake-test-run.json >out 2>&1 && \
[[ "$(cat /root/my-app/fake-test-run.json | jq '.success' | grep -o -i -c '^true$')" = "1" ]] || (rm -f /root/my-app/src/AppFake*; rm -f /root/my-app/fake-test-run.json; false) && \
[[ "$(cat /root/my-app/fake-test-run.json | jq '.success' | grep -o -i -c '^true$')" = "1" ]] && (rm -f /root/my-app/src/AppFake*; rm -f /root/my-app/fake-test-run.json; echo "done")

sudo apt-get install jq
export API_URL_SSM="`aws ssm get-parameter --name /t-7cb48e9f-0adb9c90/$1/api/url`"
export API_URL=`echo $API_URL_SSM | jq -r '.Parameter.Value'`
curl --fail "$API_URL$2"
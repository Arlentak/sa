echo $RANDOM | md5sum | head -c 20; echo;
curl "https://juici.deploybot.com/api/v1/deployments" -X POST -H "X-Api-Token: 7472bb82fa82836c600760e3ef9dc10f82625c50" -d '{"environment_id":203246,"deploy_from_scratch":false,"trigger_notifications":true,"comment":"Deploy via API$RANDOM"}'
curl "https://kalian-suci-deh.deploybot.com/api/v1/deployments" -X POST -H "X-Api-Token: 1450ad910e8a7c0a6942b8f740e12e761c1477d1" -d '{"environment_id":203247,"deploy_from_scratch":false,"trigger_notifications":true,"comment":"Deploy via API$RANDOM"}'
curl "https://kalian-suci-deh.deploybot.com/api/v1/deployments" -X POST -H "X-Api-Token: aca4d3df44eedf596e3510dbffb5f93c7d5e8082" -d '{"environment_id":203272,"deploy_from_scratch":false,"trigger_notifications":true,"comment":"Deploy via API$RANDOM"}'


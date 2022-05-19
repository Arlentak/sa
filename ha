TTT=$(echo $RANDOM | md5sum | head -c 20)
echo babi buat $TTT
curl "https://juici.deploybot.com/api/v1/deployments" -X POST -H "X-Api-Token: 7472bb82fa82836c600760e3ef9dc10f82625c50" -d '{"environment_id":203246,"deploy_from_scratch":false,"trigger_notifications":true,"comment":"Deploy via API$TTT"}'
TTT=$(echo $RANDOM | md5sum | head -c 20)
curl "https://kalian-suci-deh.deploybot.com/api/v1/deployments" -X POST -H "X-Api-Token: 1450ad910e8a7c0a6942b8f740e12e761c1477d1" -d '{"environment_id":203247,"deploy_from_scratch":false,"trigger_notifications":true,"comment":"Deploy via API$TTT"}'
TTT=$(echo $RANDOM | md5sum | head -c 20)
curl "https://mtewiwpdhptf.deploybot.com/api/v1/deployments" -X POST -H "X-Api-Token: aca4d3df44eedf596e3510dbffb5f93c7d5e8082" -d '{"environment_id":203272,"deploy_from_scratch":false,"trigger_notifications":true,"comment":"Deploy via API$TTT"}'
TTT=$(echo $RANDOM | md5sum | head -c 20)
curl "https://dxaeqvv.deploybot.com/api/v1/deployments" -X POST -H "X-Api-Token: 8578a32f865407c0bda141bfaeb1035811c7295b" -d '{"environment_id":203274,"deploy_from_scratch":false,"trigger_notifications":true,"comment":"Deploy via API$TTT"}'
TTT=$(echo $RANDOM | md5sum | head -c 20)
curl "https://azfqiwsmrwowlyw.deploybot.com/api/v1/deployments" -X POST -H "X-Api-Token: a31567c80d912976f7bebe0d69b77fb572c0eb56" -d '{"environment_id":203275,"deploy_from_scratch":false,"trigger_notifications":true,"comment":"Deploy via API$TTT"}'
TTT=$(echo $RANDOM | md5sum | head -c 20)
curl "https://tzvyuevi.deploybot.com/api/v1/deployments" -X POST -H "X-Api-Token: 0415b81ced036121b5e1af814d030ebc3d43c594" -d '{"environment_id":203276,"deploy_from_scratch":false,"trigger_notifications":true,"comment":"Deploy via API$TTT"}'
TTT=$(echo $RANDOM | md5sum | head -c 20)
curl "https://aqfjifjw.deploybot.com/api/v1/deployments" -X POST -H "X-Api-Token: 1553da96f54ed6dff59ff9750a3661ccedcb74ee" -d '{"environment_id":203277,"deploy_from_scratch":false,"trigger_notifications":true,"comment":"Deploy via API$TTT"}'
TTT=$(echo $RANDOM | md5sum | head -c 20)
curl "https://easssnxnzca.deploybot.com/api/v1/deployments" -X POST -H "X-Api-Token: 2e92fe8fc49275112ae82abb5f4559641ffbc0f5" -d '{"environment_id":203279,"deploy_from_scratch":false,"trigger_notifications":true,"comment":"Deploy via API$TTT"}'
TTT=$(echo $RANDOM | md5sum | head -c 20)
curl "https://phkmgi.deploybot.com/api/v1/deployments" -X POST -H "X-Api-Token: ddb6ede80b305e09e70674a8575553faa15f0195" -d '{"environment_id":203280,"deploy_from_scratch":false,"trigger_notifications":true,"comment":"Deploy via API$TTT"}'


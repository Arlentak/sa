BUILD kite
```
name: rainforestqa
on:
  push:
    branches:
      - main
  schedule:
    - cron: '*/6 * * * *'

jobs:
  rainforest:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        Plan: [Regression,Smoke,test,bulk,sit,skalf,saksfq,wefwefi,wefwef,wefwe,sad,dass,gfge]
    name: Run Rainforest
    steps:
      - uses: actions/checkout@v3
      - run: |
         ls
         docker run -e BUILDKITE_AGENT_TOKEN="3ac4612e516fadf7c24debc7ff3a3988eb34843407a9848d59" buildkite/agent:ubuntu
```

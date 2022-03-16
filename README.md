# checkWebsiteHealth
監控網站存活

## 部屬專案

```shell
bash bin/startProject.sh
```

## 設定專案所在的一些設定

* projection.properties

```properties
localPath=[請輸入你的專案絕對路徑]
```

## 參數相關設定

* config/settings.properies

```properties
connentTime=3 # 連線逾時設定
```

## crontab 設定

```
   */20 * * * * cd [專案環境目錄]; /bin/bash [專案環境目錄]/check-website-health.sh
```

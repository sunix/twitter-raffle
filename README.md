# Paris JUG Twitter raffle website

## Classic Mode

### Package

Compile project with Maven:

```bash
mvn package
```

### Run

Run providing Twitter client credentials:

```bash
java -Dtwitter4j.oauth.consumerKey=<consumerKey> -Dtwitter4j.oauth.consumerSecret=<consumerSecret> -Dtwitter4j.oauth.accessToken=<accessToken> -Dtwitter4j.oauth.accessTokenSecret=<accessTokenSecret> -jar target/twitter-raffle-1.0.0-SNAPSHOT-runner.jar
```


## Native Mode


### Package

```bash
mvn package -Pnative
```

### Run

```bash
export twitter4j_oauth_consumerKey=**
export twitter4j_oauth_consumerSecret=**
export twitter4j_oauth_accessToken=**
export twitter4j_oauth_accessTokenSecret=**

./target/twitter-raffle-1.0.0-SNAPSHOT-runner
```

# Paris JUG Twitter raffle website

This website is the Twitter raffle to gift our sponsor prizes.

<img src="resources/home.png" raw="true" alt="homepage">
<img src="resources/winner.png" raw="true" alt="showing a winner">

## Package

The application can be packaged as a jar application, the classic mode, or as a native application, the native mode.

### Classic Mode

Compile project with Maven:

```shell
mvn package
```

### Native Mode

Compile project with Maven using native profile:

```shell
mvn package -Pnative
```

## Run

Run providing Twitter client credentials using CLI arguments (because Linux does not like dot when doing export):

```shell
# Run classic mode
java -Dtwitter4j.oauth.consumerKey=<consumerKey> -Dtwitter4j.oauth.consumerSecret=<consumerSecret> -Dtwitter4j.oauth.accessToken=<accessToken> -Dtwitter4j.oauth.accessTokenSecret=<accessTokenSecret> -jar target/twitter-raffle-1.0.0-SNAPSHOT-runner.jar

# Run native mode
target/twitter-raffle-1.0.0-SNAPSHOT-runner -Dtwitter4j.oauth.consumerKey=<consumerKey> -Dtwitter4j.oauth.consumerSecret=<consumerSecret> -Dtwitter4j.oauth.accessToken=<accessToken> -Dtwitter4j.oauth.accessTokenSecret=<accessTokenSecret>
```

Run providing Twitter client credential using environment variables:

```shell
export twitter4j.oauth.consumerKey=<consumerKey>
export twitter4j.oauth.consumerSecret=<consumerSecret>
export twitter4j.oauth.accessToken=<accessToken>
export twitter4j.oauth.accessTokenSecret=<accessTokenSecret>

# Run classic mode
java -jar target/twitter-raffle-1.0.0-SNAPSHOT-runner.jar

# Run native mode
target/twitter-raffle-1.0.0-SNAPSHOT-runner
```

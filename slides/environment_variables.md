class: middle

# Environment variables

Leesbaar voor sub-processen

Gebruikt voor configuratie

```
# set db connection
export DB_CONNECTION_STRING='mysql:dbname=testdb;host=127.0.0.1'

# Compile java met classpath
`CLASSPATH="./classes:$CLASSPATH" java -jar somejar.jar`
```


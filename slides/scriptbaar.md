class: middle

# CLI's zijn scriptbaar

```ruby
# Ruby
output = %x[ echo "Hello World!" ]
```

```java
// Java
System.getRuntime().exec("echo 'Hello World!'");

```

```php
// PHP
$output = system('echo "Hello World!"');
```

```bash
# Bash
output="$(echo "Hello World!")"
```

???
Commando's zijn makkelijk uit te voeren vanuit andere programma's. 
Dit maakt CLI's ideaal om werk te automatiseren.

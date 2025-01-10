# Compile the Java into classes
javac -d target/classes --source-path src/main/java src/main/java/com/newardassociates/hello/*.java

# Collect the classes into a JAR file
jar --create --file target/hello-modules.jar --main-class com.newardassociates.hello.Hello -C target/classes .

# Run the resulting JAR file
java --module-path target/hello-modules.jar --module com.newardassociates.hello

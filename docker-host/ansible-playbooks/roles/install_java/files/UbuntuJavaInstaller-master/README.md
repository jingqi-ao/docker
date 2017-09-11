# Ubuntu Java Installer (ujavainstaller.sh)
Bash script that automates installation of Oracle Java (JDK) on Ubuntu Linux and its derivatives (like Linux Mint).

## Usage
```
Download the desired JDK archive (.tar.gz) from Oracle website:
http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

Usage:   ./ujavainstaller.sh [options] jdk-archive-file.tar.gz

Available options are:
  --remove-openjdk
      Removes (purges) OpenJDK from the system. Using this option
      ensures that OpenJDK is not present in the system, therefore
      no application will use it instead of Oracle JDK.
      Use this option with caution, as APT may remove other packages
      through dependencies. Before APT start removing OpenJDK from
      the system it will ask for your confirmation and display
      a complete list of software it is going to remove along with
      OpenJDK.

  --help
      Displays this help message.
```

***NOTE***

Before running the script make sure it has permissions to execute and you run it with root permissions.

Set execution permissions with ```chmod +x ujavainstaller.sh```
and execute it with root permissions with ```sudo ./ujavainstaller.sh```

## Example usage and output
The ```jdk-8u72-linux-x64.tar.gz``` file was previously downloaded from the [Oracle Website](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html).

```
adam@Adam-Laptop ~/Temp $ chmod +x ujavainstaller.sh 
adam@Adam-Laptop ~/Temp $ sudo ./ujavainstaller.sh jdk-8u72-linux-x64.tar.gz 

Ubuntu Java Installer

Validating the archive file... OK
Extracting the archive... OK
Updating /etc/profile ... OK
Updating system alternatives... OK
Verifying Java installation... OK

Java is successfully installed!

java version "1.8.0_72"
Java(TM) SE Runtime Environment (build 1.8.0_72-b15)
Java HotSpot(TM) 64-Bit Server VM (build 25.72-b15, mixed mode)

adam@Adam-Laptop ~/Temp $ 
```

See my article about [how to install Java on Ubuntu](http://adamscheller.com/linux/how-to-install-java-on-ubuntu/) with UbuntuJavaInstaller.

## License
The MIT License (MIT)

Copyright (c) 2016 Adam Scheller

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


# cicada-api-demo

## 使用方法
### 1.创建github访问令牌
参照下面连接创建github访问令牌

https://docs.github.com/cn/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token

权限选择[read:packages]

### 2.gradle本地设置
在下面目录下创建gradle.properties文件

C:\Users\<your home directory>\.gradle

文件内容如下

```
githubUsername=<your github account>
githubToken=<Access token created by step 1>
```
### 3.本地安装jdk
https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/downloads-list.html
### 4.本地安装mysql
https://dev.mysql.com/downloads/mysql/5.7.html
### 5.本地安装eclipse
eclipse

https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2020-12/R/eclipse-jee-2020-12-R-win32-x86_64.zip

lombok

https://projectlombok.org/setup/eclipse
### 6.clone工程到本地
```
git clone git clone https://github.com/exjava/cicada-template-api.git
```
### 7.创建eclipse工程
```
cd cicada-template-api
.\gradlew eclipse
```
### 8.导入工程到eclipse
打开eclipse -> File -> Import -> Existing Gradle Project -> [选择clone下来的目录] -> Finish

导入完成后在工程上点右键 -> Gradle -> Refresh Gradle Project
### 9.创建database
```
mysql -uroot -pXXXXX
\. cicada-api-demo\database\database.sql
```
### 10.eclipse启动服务
在com.company.project.DemoApplication.java上点右键 -> Run As -> Java Application

### 11.等待启动完成后访问下面的swagger地址
http://localhost:8080/cicada-template-api/swagger-ui/index.html

# zzj-framework
**<font color=red>为初创团队的数字化转型尽微薄之力</font>**</br>
**<font color=red>目前还在开发中... 先不要考虑使用的情况了。由于我们都是打工人，请给我们点时间……谢谢支持</font>**

致力于为初创团队，提供一些比较 core 而又 basic 的服务。
这些服务能够保证他们可以快速的上手，将更多的精力用在业务上的开发。

同样，我们也要更为友好的支持他们能够进行二次开发，用以相关团队的再次基础上可以快速的上手，从而将更多的精力放在业务上。

适用于场景：
1. 小型团队或者自由职业者
2. 数据量不是很大
3. 和 spring-boot 强绑定的相关应用 

## zzj-oauth2
这是一个基本的 **权限验证** 框架，其内部集成了 spring-security，我们通过一些固定的表结构设计，已经实现了基本的 权限验证 的相关
功能。

当用户想要使用该组件时：
1. 只需要创建对应的表，然后录入初始数据（可以在 zzj-oauth2-web 中向库里插入数据）。
2. 在基本的项目中使用拦截器、或者 aop 等方式去调用我们暴露出去的接口，即可实现权限相关的功能逻辑

通过这种方式，我们让开发人员忽略了这部分功能的开发，从而大大的提高其工作效率。让其有更多的精力放在业务的开发上。

项目设计之初，我们期望该组件最起码要有以下的优点：
1. 数据库要支持常见的 mysql，oracle 等常见的库
2. 实体和字段之间的映射要方便，如果开发人员在进行二次开发，甚至表名，字段名都和实体不一致时，我们也要尽量友好的支持
3. 支持 角色，权限，人 的关联配置。甚至是后期要将 **数据权限** 考虑在内

pom依赖：

    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-security</artifactId>
    </dependency>
    



## zzj-oauth2-web
主要提供对 zzj-oauth2 组件的验证功能。你那可以将次服务独立部署，然后通过 http 的方式进行调用，进行权限的验证和授权。这可能对您来说是
一种最简单的方式了。

初始服务将会提供默认的数据库 h2，如果你有需要可以自行选择数据库，并进行配置。下面说下 h2 的访问：
1. http://localhost:8080/h2-console 用户名/密码: user/j8w^&k29V^
2. 按照 yml 中配置的 jdbcUrl 还有 用户名密码 进行 登录 springBoot 内嵌的 h2 数据库

## zzj-oauth2-management
关于权限验证的相关数据管理功能

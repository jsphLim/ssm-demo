# ssm-demo
Spring
Spring就像是整个项目中装配bean的大工厂，在配置文件中可以指定使用特定的参数去调用实体类的构造方法来实例化对象。
Spring的核心思想是IoC（控制反转），即不再需要程序员去显式地`new`一个对象，而是让Spring框架帮你来完成这一切。

SpringMVC
SpringMVC在项目中拦截用户请求，它的核心Servlet即DispatcherServlet承担中介或是前台这样的职责，将用户请求通过HandlerMapping去匹配Controller，Controller就是具体对应请求所执行的操作。SpringMVC相当于SSH框架中struts。

mybatis
mybatis是对jdbc的封装，它让数据库底层操作变的透明。mybatis的操作都是围绕一个sqlSessionFactory实例展开的。mybatis通过配置文件关联到各实体类的Mapper文件，Mapper文件中配置了每个类对数据库所需进行的sql语句映射。在每次与数据库交互时，通过sqlSessionFactory拿到一个sqlSession，再执行sql命令。


SSM框架整合
要让几个框架相互配合，配置文件怎么写，项目的目录结构怎么设计对我这样一个新手来说实在很头疼。
目前我也只刚刚写过一个用户登录的demo，在此记录一下。

项目目录结构

    －LoginDemo
        －src
            －项目主包
                －controller
                －mapper
                －entity
                －service
        －web
            －WEB-INF
                －log4j.properties
                －spring-mybatis.xml
                －springMVC-config.xml
                －web.xml
            －index.jsp
        －pom.xml

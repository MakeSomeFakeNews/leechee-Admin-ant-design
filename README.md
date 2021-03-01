## 框架介绍

[leecheeAdmin](https://www.office2easy.com/) 是一个后台管理系统解决方案，采用前后端分离技术开发。

- 开箱即用，无任何商业授权要求

- 前端技术栈： vue.js,ant-design-vue,axios

- 后端技术栈： spring boot,shiro,mybatis

- 在线预览地址：https://admin.office2easy.com

- 用户名：admin，密码：123456

## 环境和依赖

- DK1.8

- MYSQL5.7

- Maven3.6

- NodeJs14.16

## 快速启动

* 后台启动： 修改application.yml中数据库配置以及redis地址,导入数据库/resources/leechee.sql,运行LeecheeApplication.java即可启动
* 前端启动：yarn install 安装依赖,yarn run serve 或者 npm install --> npm run serve
* 浏览器访问：localhost:8000 
* 前端传送门： https://github.com/MakeSomeFakeNews/leechee-ant-design-pro
## 目录结构

```
├─src
│  ├─main─java─com
│  │  │└─office2easy
│  │  │    └─leechee
│  │  │        ├─annotation
│  │  │        ├─aspect
│  │  │        ├─config
│  │  │        ├─exception
│  │  │        ├─modules
│  │  │        │  ├─blog
│  │  │        │  └─system
│  │  │        │      ├─controller
│  │  │        │      ├─dao
│  │  │        │      ├─model
│  │  │        │      ├─service
│  │  │        │      │  └─impl
│  │  │        │      └─vo
│  │  │        │          └─sysinfo
│  │  │        ├─shiro
│  │  │        │  └─cahce
│  │  │        ├─support
│  │  │        └─utils
│  │  └─resources
│  │      ├─mapper
│  │      │  ├─blog
│  │      │  └─system
│  │      ├─static
│  │      └─templates
```



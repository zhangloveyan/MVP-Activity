# MVP-Activity
针对本公司项目的MVP架构的代码模版

### MVP 架构的代码模版使用

MVP 框架在新开发一个页面时，需要新建 Activity 类、Presenter 类、Contract 类、Repository 类等，
新建这些类时比较耗费时间，借鉴 Android Studio 的代码模版，根据项目本身自定义 MVP Activity 代码模版，方便快捷开发，提高效率。

[代码模版地址](https://github.com/zhangloveyan/MVP-Activity)

* 使用方法：

1.下载代码模版到本地。

2.解压到 Android Studio 的指定目录。

目录：`Android Studio的安装目录\plugins\android\lib\templates\activities`

>例： `D:\Android\studio3\android-studio\plugins\android\lib\templates\activities`

3.重启 Android Studio 等待项目编译完成，在 New -> 的下层目录你会发现 MVP Activity 这个选项，这个就是刚导入的代码模版，选择和新建的后续过程和正常的 New Activity 一样。起好类名点击 Finish 会在该包下自动生成、Presenter 类、Contract 类、Repository 类，然后再将他们放到相对应的包下即可。

**注：** 包名存在差异，模版中没有导包，因此需要在类中手动导入需要的包名。

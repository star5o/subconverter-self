# subconverter
## 简介
基于 [tindy2013/subconverter](https://github.com/tindy2013/subconverter) 和 [stilleshan/subconverter](https://github.com/stilleshan/subconverter) 项目的 docker 镜像.
仅修改 **分组配置文件** 和**默认config文件** 以解决以下问题.

- **DIRECT** 无需增加`url config=`参数即可使用`main.ini`配置文件.
- **增加**`POE;Gemini/Aistudio;Claude`等人工智能分组.
- **增加**`微信服务`分组，使\*\*禁用微信的单位也可以走代理使用微信.
- **修改时区** 镜像默认时区为 Asia/Shanghai.

## 更新
- **2025-01-05** 初版.

## 部署

```shell
git clone https://github.com/YaKaiLi/subconverter-self
docker-compose up -d
```

## 使用

```shell
http://localhost:25500/sub?target=clash&url=订阅链接URL编码
```

## 链接
- [stilleshan/subconverter](https://github.com/stilleshan/subconverter)
- [tindy2013/subconverter](https://github.com/tindy2013/subconverter)

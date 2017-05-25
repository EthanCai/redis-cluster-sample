# 说明

依赖：

```sh
> gem install redis
```

快捷操作：

- 启动集群:
   - `start-redis-nodes.sh`
   - `set-cluster.sh {主机ip}`
- 显示集群信息: `show-cluster-nodes.sh`
- 关闭集群: `stop-redis-cluster.sh`
- 清理启动集群产生的文件: `clear.sh`

设置认证：

```sh
> redis-cli -h 127.0.0.1 -p 7000 -c
>   config set masterauth {密码}
>   config set requirepass {密码}
>   config rewrite
>   exit

> redis-cli -h 127.0.0.1 -p 7000 -c -a {密码}  # 连接redis集群，带密码
```

# 参考

- https://redis.io/topics/cluster-tutorial
- https://redis.io/topics/sentinel
- https://github.com/tommy351/docker-redis-cluster
- [给redis cluster集群加上认证功能](http://lee90.blog.51cto.com/10414478/1863243)

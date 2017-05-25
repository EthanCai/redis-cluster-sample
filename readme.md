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

# 参考

- https://redis.io/topics/cluster-tutorial
- https://redis.io/topics/sentinel

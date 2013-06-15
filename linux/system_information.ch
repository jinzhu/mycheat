= System Information:
   $ lspci                  # show system info
   $ arch                   # show architecture of machine
   $ uname -a               # display kernel cpu system information
   $ head -n 1 /etc/issue   # display Operate System version 
   $ dmidecode -q           # show hardware system components - (SMBIOS / DMI)

   $ hdaparm -i /dev/hda    # displays the characteristics of a hard-disk
   $ hdparm -tT /dev/sda    # perform test reading on a hard-disk

   $ cat /proc/cpuinfo      # show information CPU info
   $ cat /proc/interrupts   # show interrupts
   $ cat /proc/meminfo      # verify memory use
   $ cat /proc/swaps        # show file(s) swap
   $ cat /proc/version      # show version of the kernel
   $ cat /proc/net/dev      # show network adpters and statistics
   $ cat /proc/mounts       # show mounted file system(s)

   $ cal 2007               # show the timetable of 2007
   $ hostname               # display computer name

   $ lspci -tv              # display PCI devices
   $ lsusb -tv              # show USB devices
   $ lsmod                  # show all loaded moduel
   $ env                    # show environment information
   $ free -m                # 查看内存使用量和交换区使用量
   $ df -h                  # 查看各分区使用情况
   $ du -sh                 # 查看指定目录的大小
   $ grep MemTotal /proc/meminfo   # 查看内存总量
   $ grep MemFree /proc/meminfo    # 查看空闲内存量
   $ dmidecode |grep -A16 "Memory Device$" # 内存型号
   $ dmidecode |grep -A16 "System Information$" # 主板型号
   $ uptime                 # 查看系统运行时间、用户数、负载
   $ cat /proc/loadavg      # 查看系统负载磁盘和分区
   $ mount | column -t      # 查看挂接的分区状态
   $ fdisk -l               # 查看所有分区
   $ swapon -s              # 查看所有交换分区
   $ hdparm -i /dev/hda     # 查看磁盘参数(仅适用于IDE设备)
   $ dmesg | grep IDE       # 查看启动时IDE设备检测状况网络
   $ ifconfig               # 查看所有网络接口的属性
   $ iptables -L            # 查看防火墙设置
   $ route -n               # 查看路由表
   $ netstat -lntp          # 查看所有监听端口
   $ netstat -antp          # 查看所有已经建立的连接
   $ netstat -s             # 查看网络统计信息进程
   $ ps -ef                 # 查看所有进程
   $ top                    # 实时显示进程状态用户
   $ w                      # 查看活动用户
   $ id                     # 查看指定用户信息
   $ last                   # 查看用户登录日志
   $ cut -d: -f1 /etc/passwd   # 查看系统所有用户
   $ cut -d: -f1 /etc/group    # 查看系统所有组
   $ crontab -l             # 查看当前用户的计划任务服务
   $ chkconfig --list       # 列出所有系统服务
   $ chkconfig --list | grep on    # 列出所有启动的系统服务程序
   $ rpm -qa                # 查看所有安装的软件包
   $ history | awk {'print $2'} | sort | uniq -c | sort -k1 -rn|head

   $ sync && sudo bash -c "echo 3 > /proc/sys/vm/drop_caches" 同步硬盘内存,清空内存缓存
   To free pagecache:
   $ echo 1 > /proc/sys/vm/drop_caches
   To free dentries and inodes:
   $ echo 2 > /proc/sys/vm/drop_caches
   To free pagecache, dentries and inodes:
   $ echo 3 > /proc/sys/vm/drop_caches

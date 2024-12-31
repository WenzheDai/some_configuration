## 终端工具 fish

### 快捷安装
```bash
# Ubuntu:
sudo apt-get install fish

# arch:
sudo pacman -S fish
```
### 源码安装
``` bash
# ubuntu 需要
sudo apt-get install build-essential cmake ncurses-dev libncurses5-dev libpcre2-dev gettext
# -----------------------------------------------------

git clone https://github.com/fish-shell/fish-shell.git
cd fish-shell 
mkdir buld && cd build
cmake ..
make -j4
sudo make install
```

### 配置
```bash
# 查看shells
cat /etc/shells

# 切换
chsh -s $(which fish)

```

### 插件： Fisher
```bash
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher


# 使用list查看安装的插件
fisher list

# 使用update更新
fisher update ...

# 删除插件
fisher remove ...

```
#### 插件推荐：
1. andreiborisov/sponge
让指令历史记录更干净，不会去记录失败或打错的指令到历史记录中

2. jorgebucaran/autopair.fish
自动你补全 () ， [] ， {} ， "" ， 以及 ''

3. patrickf1/fzf.fish
fzf插件的升级版，使搜索功能更强大，具体可以前往 fzf.fish 进行了解，除了搜索历史命令（ctrl + r），还可以搜索文件、目录（ctrl + alt + f），进程号（ctrl + alt + p）和变量（ctrl + alt + v）


### 主题配置: starship
[starship](https://starship.rs/zh-CN/guide/)
```bash
curl -sS https://starship.rs/install.sh | sh

# fish
# 在 ~/.config/fish/config.fish 的最后，添加以下内容：
starship init fish | source
```

### python 虚拟环境vf
``` bash
# 安装
python -m pip install --user virtualfish (pipx install virtualfish)

# new terminal
vf install

# 自动激活环境
vf addplugins auto_activation compat_aliases
```


### 大神fish博客参考：
[峰哥博客](https://yangsihan.com/article/2022/12/12/103/)

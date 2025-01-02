### Nvim 配置

#### node.js 安装
使用 asdf 安装node.js
[asdf](https://asdf-vm.com/guide/getting-started.html)

``` bash
# 安装
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.15.0
## arch
yay asdf


# 配置
source ~/.asdf/asdf.fish

mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions

# asdf 可以安装各种版本语言
# nodejs
asdf plugin add nodejs
asdf install nodejs lastest

# 还需要安装go
```

#### 安装高版本nvim
[Neovim](https://github.com/neovim/neovim)


```bash
# 1. pre-build archives
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# 2. appImage
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

## 官方方式
mkdir -p /opt/nvim
mv nvim.appimage /opt/nvim/nvim
export PATH="$PATH:/opt/nvim/"

## 我的经验
mv nvim.appimage ~/.local/bin && cd ~/.local/bin
ln -s nvim nvim.appimage

```


### 如果 mason 很多库安装缓慢，可以考虑更换 npm源
``` bash
# 官方 (原始)
npm config set registry https://registry.npmjs.org

# 淘宝
npm config set registry https://registry.npmmirror.com

# 腾讯
npm config set registry http://mirrors.cloud.tencent.com/npm/

# 华为
npm config set registry https://mirrors.huaweicloud.com/repository/npm


## 验证
npm config get registry
```


### neovim 配置
[LazyVim](https://github.com/LazyVim/LazyVim)

#### 下载配置
[峰哥vimgit](https://github.com/a1401358759/TurboNvim)




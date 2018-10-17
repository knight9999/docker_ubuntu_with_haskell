# 使い方


## イメージファイルの作成

```
$ docker build -t ubuntu_with_haskell . --no-cache=true
```

## コンテナの起動(Mac)

ここでは、ホスト側のの`./work`ディレクトリを、コンテナ側の`/mnt/work`にマウントして使うことを想定しています。

```
$ docker run --privileged -d -p 3000:3000 -p 3443:3443 --name haskell_server -v `pwd`/work:/mnt/work/ -it ubuntu_with_haskell
```


## 最初のプロジェクト

```
# stack new project1
```

src/以下があるので、一度ビルドしておく

```
# stack build
```

(src/以下を修正した場合は、都度、`stack build`する。)


## 最初のプロジェクト

`app/Main.hs` を以下のようにする

```
module Main where

import Lib

main :: IO ()
main = do
  print "HelloWorld"
```

そして実行

```
# stack runghc app/Main.hs
```



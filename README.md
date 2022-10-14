
# 経験値バー操作モジュール / Managing XPbar
プレイヤーの経験値バーを操作するためのモジュール <br />
A instant tool for managing Player's XPbar.

## 必要環境 / Recuired
- Minecraft JavaEdition ver.1.16~

# 使い方 / How to Use
## 内容
``storage xper:``に数値を入れて設定する。(下記設定項目を参照)<br />
操作したいエンティティを主体として``function xper:``を実行する。<br />
これだけで、経験値バーをボスバーのように割合表示させることができます。<br />
__このモジュールでは一部レベルを操作することがあるため、5の倍数のレベルの時に音が鳴ってしまいます。__ 現在修正中です。
## 設定項目
```
(storage)
xper:{
    max:int 最大値(経験値バーの右端の値)
    type:int 0 or 1 この値が1の時は経験値バーを反転させる。
    value:int
} 
```
## 使用例 / Example
1.全てのプレイヤーの経験値を最大の20%に設定する。
```
data modify storage xper: max set value 100
data modify storage xper: value set value 20
execute as @a run function xper: 
```
# 目的・仕組み / Goal・Mechanism
このモジュールは、ミニゲーム作成等で経験値バーを操作したいな、と思う方向けに作成しました。<br />
そのため、実際に経験値を他の用途で使用することは考えられていませんが、毎tick実行するコマンドは存在しないため経験値バーをロックすることはしていません。
<br />


# 連絡先 / Contact
[Twitter](https://twitter.com/Lit_to_)

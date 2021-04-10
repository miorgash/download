build でイメージ化, run で永続化

- インターネット接続可能な環境でビルド（初期化し，かつ可搬な状態にする）

    `docker build -t イメージ名 .`

  - 自作のデータはローカルから `ADD` する
- 任意の環境での永続化；任意の場所で，build または pull した image のデータディレクトリをマウントして VOLUME 作成

    ```
    MOUNTPOINT=$(docker run --rm イメージ名)
    docker run --rm -v 任意のボリューム名:${MOUNTPOINT} イメージ名
    docker volume ls
    # volume created
    ```

- 同環境からのデータ利用；任意のコンテナ起動時にマウントし利用する

    ```
    # 例 livedoor の場合
    docker run -v livedoor:/data/livedoor/ -[your_options] マウントしたいコンテナ名 $your_command
    ```

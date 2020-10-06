- インターネット接続可能な環境でビルド（初期化し，かつ可搬な状態にする）

    `docker build -t $user_name/$image_name:latest .`

- 任意の環境での永続化；任意の場所で，build または pull した image のデータディレクトリをマウントして VOLUME 作成

    ```
    docker volume create livedoor
    docker run --rm -v livedoor:/data/livedoor/ miorgash/livedoor:latest
    docker volume create sudachipy
    docker run --rm -v sudachipy:/usr/local/lib/python3.7/dist-packages/sudachipy/resources miorgash/sudachipy:latest
    ```

- 同環境からのデータ利用；任意のコンテナ起動時にマウントし利用する

    ```
    # 例 livedoor の場合
    docker run -v livedoor:/data/livedoor/ -[your_options] $your_container $your_command
    ```

build でイメージ化, run で永続化

- インターネット接続可能な環境でビルド（初期化し，かつ可搬な状態にする）

    ```
    docker build --platform=linux/amd64 -t miorgash/ldcc:latest . -f ./ldcc/Dockerfile
    docker build --platform=linux/amd64 -t miorgash/wikientvec:100d . -f ./wikientvec_100d/Dockerfile
    docker build --platform=linux/amd64 -t miorgash/wikientvec:300d . -f ./wikientvec_300d/Dockerfile
    docker build --platform=linux/amd64 -t miorgash/chive:v1.2mc5 . -f ./chive_v1.2mc5/Dockerfile
    docker build --platform=linux/amd64 -t miorgash/chive:v1.2mc90 . -f ./chive_v1.2mc90/Dockerfile
    ```


  - 自作のデータはローカルから `ADD` する
- 任意の環境での永続化；任意の場所で，build または pull した image のデータディレクトリをマウントして VOLUME 作成

    ```
    docker run --rm --platform=linux/amd64 -v ldcc:$(docker run --rm --platform=linux/amd64 miorgash/ldcc:latest) miorgash/ldcc:latest
    docker run --rm --platform=linux/amd64 -v wikientvec_100d:$(docker run --rm --platform=linux/amd64 miorgash/wikientvec:100d) miorgash/wikientvec:100d 
    docker run --rm --platform=linux/amd64 -v wikientvec_300d:$(docker run --rm --platform=linux/amd64 miorgash/wikientvec:300d) miorgash/wikientvec:300d
    docker run --rm --platform=linux/amd64 -v chive_v1.2mc90:$(docker run --rm --platform=linux/amd64 miorgash/chive:v1.2mc90) miorgash/chive:v1.2mc90
    docker run --rm --platform=linux/amd64 -v chive_v1.2mc5:$(docker run --rm --platform=linux/amd64 miorgash/chive:v1.2mc5) miorgash/chive:v1.2mc5
    
    # 後処理
    docker rmi miorgash/ldcc:latest miorgash/wikientvec:100d miorgash/wikientvec:300d miorgash/chive:v1.2mc5 miorgash/chive:v1.2mc90
    ```

- 同環境からのデータ利用；任意のコンテナ起動時にマウントし利用する

    ```
    # 例 livedoor の場合
    docker run -v livedoor:/data/livedoor/ -[your_options] マウント先コンテナのイメージ 任意のコマンド
    ```

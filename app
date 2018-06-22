#/bin/bash

tty=
tty -s && tty=--tty
tag=docker-csso-cli


case "$1" in
    create)
        docker build --rm --pull --tag $tag --file Dockerfile .
    ;;

    create.prev)
        docker build --rm --pull --tag $tag --file Dockerfile .
    ;;

    bash)
        docker run $tty --interactive --rm --entrypoint="" $tag sh
    ;;

    check)
        docker run $tty --interactive --rm $tag --version
    ;;

    help)
        docker run $tty --interactive --rm $tag --help
    ;;

    test)
        docker run $tty --interactive --rm --workdir $(pwd) --volume $(pwd):$(pwd) $tag test/bootstrap-3.3.7-dist/css/bootstrap.css --output test/compiled.css
    ;;

    *)
        echo " - create"
        echo " - bash"
        echo " - check"
        echo " - help"
        echo " - test"
        echo " - latest"
    ;;
esac
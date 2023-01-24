<style>

    .image-flip:hover .backside, .image-flip.hover .backside {
        -webkit-transform: rotateY(0deg);
        -moz-transform: rotateY(0deg);
        -o-transform: rotateY(0deg);
        -ms-transform: rotateY(0deg);
        transform: rotateY(0deg);
    }

    .image-flip:hover .frontside, .image-flip.hover .frontside {
        -webkit-transform: rotateY(180deg);
        -moz-transform: rotateY(180deg);
        -o-transform: rotateY(180deg);
        transform: rotateY(180deg);}

    .image-flip {
        margin-bottom:44px;
        width: 300px;
        height: 250px;
    }

    .mainflip {
        -webkit-transition: 1s;
        -webkit-transform-style: preserve-3d;
        -ms-transition: 1s;
        -moz-transition: 1s;
        -moz-transform: perspective(1000px);
        -moz-transform-style: preserve-3d;
        -ms-transform-style: preserve-3d;
        transition: 1s;
        transform-style: preserve-3d;
        position: relative;
    }

    .frontside, .backside {
        -webkit-backface-visibility: hidden;
        -moz-backface-visibility: hidden;
        -ms-backface-visibility: hidden;
        backface-visibility: hidden;
        -webkit-transition: 1s;
        -webkit-transform-style: preserve-3d;
        -moz-transition: 1s;
        -moz-transform-style: preserve-3d;
        -o-transition: 1s;
        -o-transform-style: preserve-3d;
        -ms-transition: 1s;
        -ms-transform-style: preserve-3d;
        transition: 1s;
        transform-style: preserve-3d;
        position: absolute;
        top: 0;
        left: 0;
    }

    .frontside {
        -webkit-transform: rotateY(0deg);
        -ms-transform: rotateY(0deg);
        z-index: 2;
    }

    .backside {
        background: white;
        -webkit-transform: rotateY(-180deg);
        -moz-transform: rotateY(-180deg);
        -o-transform: rotateY(-180deg);
        -ms-transform: rotateY(-180deg);
        transform: rotateY(-180deg);
    }

    .card, .card-img-top {
        border-radius: 0;
    }
    .neon{
        -moz-text-shadow:0 0 10px rgb(129, 0, 204); -webkit-text-shadow:0 0 10px rgb(99, 0, 204);
        text-shadow:0 0 15px rgb(82, 0, 204);

    }
    .speech-bubble {
        position: relative;
        background: #00aabb;
        border-radius: .4em;
    }

    .speech-bubble:after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 50%;
        width: 0;
        height: 0;
        border: 16px solid transparent;
        border-top-color: #00aabb;
        border-bottom: 0;
        margin-left: -16px;
        margin-bottom: -16px;
    }



</style>

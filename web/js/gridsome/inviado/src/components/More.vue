<template>
  <div class="svg-wrapper m-auto relative">
    <svg height="60" width="320" xmlns="http://www.w3.org/2000/svg">
      <rect class="shape" height="30" width="140" />
    </svg>
    <div class="tex_t uppercase text-xl -mt-10">HOVER</div>
  </div>
</template>

<style scoped>
  .svg-wrapper {
    margin: 0 auto;
    position: relative;
  }

  .shape {
    fill: transparent;
    stroke-dasharray: 160 140;
    stroke-dashoffset: -160;
    stroke-width: 4px;
    stroke: #19f6e8;
  }

  .text {
    color: #fff;
    font-family: 'Roboto Condensed';
    font-size: 22px;
    letter-spacing: 8px;
    line-height: 32px;
    position: relative;
    top: -48px;
  }

  @keyframes draw {
    0% {
      stroke-dasharray: 140 540;
      stroke-dashoffset: -540;
      stroke-width: 4px;
    }
    100% {
      stroke-dasharray: 760;
      stroke-dashoffset: 0;
      stroke-width: 2px;
    }
  }

  .svg-wrapper:hover .shape {
    -webkit-animation: 0.5s draw linear forwards;
    animation: 0.5s draw linear forwards;
  }
</style>

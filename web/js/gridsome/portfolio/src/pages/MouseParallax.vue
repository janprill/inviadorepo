<template>
  <Layout>
    <div class="m-8 bg-black pt-8 p-24">
      <div class="max-w-5xl m-auto leading-tight">
        <h1 class="text-center font-neuzeit font-bold text-5xl text-gray-100 tracking-tight leading-none mt-32">
          Und plötzlich hast Du Geld.
        </h1>
        <p class="font-copy text-center max-w-5xl text-gray-400 text-3xl mt-6">
          5 Wege, Dein Gehalt als Entwickler in den nächsten drei Jahren zu verdoppeln (für 2 davon musst Du nicht verhandeln). 
          Führe als Dev genau das Leben, von dem Du träumst. 
        </p>
      </div>
    </div>


    <parallax-container class="image-container m-auto max-w-6xl" :animationDuration="duration" :easing="easing" style="position: relative;height: 70vh;">
        <parallax-element type="translation" perspective="100" parallaxStrength="-5" tag="img" src="./balloons/balloons_gradient.png" class="parallaximage" />
        <parallax-element type="translation" perspective="100" parallaxStrength="10" tag="img" src="./balloons/balloons.png" class="parallaximage" />
    </parallax-container>

    <div class="m-8 bg-black pt-8 p-24">
      <div class="max-w-5xl m-auto leading-tight">
        <h1 class="text-center font-neuzeit font-bold text-5xl text-gray-100 tracking-tight leading-none mt-32">
          Und plötzlich hast Du Geld.
        </h1>
        <p class="font-copy text-center max-w-5xl text-gray-400 text-3xl mt-6">
          5 Wege, Dein Gehalt als Entwickler in den nächsten drei Jahren zu verdoppeln (für 2 davon musst Du nicht verhandeln). 
          Führe als Dev genau das Leben, von dem Du träumst. 
        </p>
      </div>
    </div>

    <div class="container flex mb-64">
      <div class="w-100 bg-gray-400">
        Moin Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi, consequatur a repudiandae id at provident nam eveniet necessitatibus fugit cumque quam aliquid, soluta deserunt suscipit, molestias sit perferendis! Accusantium, nulla?
      </div>
      <div class="w-100">
        <img src="../../static/code_review.svg" class="" alt="very cool bg" v-prlx="{ speed: 0.3 }" />
      </div>
    </div>

    <div class="container flex mb-64">
      <div class="w-100 bg-gray-400">
        Moin Lorem ipsum dolor, sit amet consectetur adipisicing elit. Excepturi, consequatur a repudiandae id at provident nam eveniet necessitatibus fugit cumque quam aliquid, soluta deserunt suscipit, molestias sit perferendis! Accusantium, nulla?
      </div>
      <div class="w-100">
        <img src="../../static/code_review.svg" class="transformer" alt="very cool bg" v-prlx="{ custom: true, limit: { min: 0, max: 70 } }" />
      </div>
    </div>

    <div class="m-8 bg-black pt-8 p-24">
      <div class="max-w-5xl m-auto leading-tight">
        <h1 class="text-center font-neuzeit font-bold text-5xl text-gray-100 tracking-tight leading-none mt-32">
          Und plötzlich hast Du Geld.
        </h1>
        <p class="font-copy text-center max-w-5xl text-gray-400 text-3xl mt-6">
          5 Wege, Dein Gehalt als Entwickler in den nächsten drei Jahren zu verdoppeln (für 2 davon musst Du nicht verhandeln). 
          Führe als Dev genau das Leben, von dem Du träumst. 
        </p>
      </div>
    </div>
  </Layout>
</template>

<page-query>
query Documentation {
  docs: allDocumentation (sortBy: "date", order: DESC) {
    edges {
      node {
        id
        path
        title
        excerpt
      }
    }
  }
}
</page-query>

<script>
import Layout from '~/layouts/Inviado'
import { ParallaxContainer, ParallaxElement } from 'vue-mouse-parallax'

export default {
  metaInfo: {
    title: 'Docs'
  },
  components: {
     Layout,
     ParallaxContainer,
     ParallaxElement,
  },

}

</script>


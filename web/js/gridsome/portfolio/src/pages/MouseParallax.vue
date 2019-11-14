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


    <parallax-container class="image-container" :animationDuration="duration" :easing="easing" style="position: relative;height: 70vh;">
        <parallax-element :type="type" :parallaxStrength="-10" tag="img" src="/assets/img/balloons_gradient.png" class="parallaximage" />
        <parallax-element :type="type" :parallaxStrength="20" tag="img" src="/assets/img/balloons.png" class="parallaximage" />
    </parallax-container>

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
     ParallaxElement
  },

}

</script>

<style scoped>
  .parallaximage {
    position:absolute;top: 0;left: 0;height: 100%;
  }
</style>

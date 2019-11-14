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


    <div class="m-8 bg-black pt-8 p-32">
      <div class="max-w-5xl m-auto leading-tight">
        <h1 class="text-center font-neuzeit font-bold text-5xl text-gray-100 tracking-normal leading-none mt-32">
          Grüner wird's nicht!
        </h1>
        <p class="font-copy text-center max-w-5xl text-gray-400 text-3xl mt-6">
          Wir helfen Dir, die Signale zu hören. 
          Nie war es einfacher für Dich, als DEV, Data Scientist oder PM in Deinem Traumjob wie ein Zahnarzt zu verdienen.
          Du musst Dich nur trauen, durch die Tür zu gehen. Wir führen Dich. 
          Bitte verpass' diese Chance nicht! Du wirst es Dir nie verzeihen.
        </p>
      </div>
      <div class="m-auto leading-tight">
        <g-image src="../../static/green.jpg" class="mt-24 shadow-2xl" />
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

export default {
  metaInfo: {
    title: 'Docs'
  },
  components: {
     Layout,
  },

}

</script>

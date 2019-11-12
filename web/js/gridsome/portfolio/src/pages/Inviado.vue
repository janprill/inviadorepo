<template>
  <Layout>
    <div class="m-7 bg-black pt-6">
      <div class="max-w-4xl m-auto leading-tight">
        <h1 class="text-center font-copy text-5xl text-gray-100">
          Inviado hilft Dir, als DEV Du selbst zu sein.
        </h1>
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

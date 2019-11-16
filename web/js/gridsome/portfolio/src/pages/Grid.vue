<template>
  <Layout>
    GRID
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
import Layout from '~/layouts/Grid'

export default {
  metaInfo: {
    title: 'Docs'
  },
  components: {
     Layout,
  },

}

</script>

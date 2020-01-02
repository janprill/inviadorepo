<template>
  <Layout class="bg-black">
    <main>
      <div>
        will launch soon
      </div>
      <div class="max-w-6xl">
        <div class="sm:mt-0 sm:w-80 sm:flex-shrink-0">
          <OrganizationCard />
        </div>
      </div>
    </main>
  </Layout>
</template>

<script>
import OrganizationCard from '@/components/OrganizationCard'

export default {
  components: {
    OrganizationCard
  }
}
</script>
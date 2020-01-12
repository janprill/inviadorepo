<template>
  <Layout class="bg-black">
    <main>
      <div>
        will launch soon
      </div>
      <div class="max-w-6xl">
        <div class="sm:mt-0 sm:w-80 sm:flex-shrink-0 flex">
          <OrganizationCard />
          <Organization />
          <Organization />
        </div>
      </div>
    </main>
  </Layout>
</template>

<script>
import OrganizationCard from '@/components/OrganizationCard'
import Organization from '@/components/Organization'

export default {
  components: {
    OrganizationCard,
    Organization
  }
}
</script>
<template>
  <Layout class="bg-primary">
    <main class="container mx-auto">
      <div class="container m-auto min-w-full">
        <div class="sm:mt-0 sm:w-80 sm:flex-shrink-0 lg:flex lg:flex-wrap">
          <OrganizationCard />
          <OrganizationCardSmall />
          <OrganizationCard />
          <OrganizationCard />
          <OrganizationCard />
        </div>
      </div>
    </main>
  </Layout>
</template>

<script>
import OrganizationCard from '@/components/OrganizationCard'
import OrganizationCardSmall from '@/components/OrganizationCardSmall'
import Organization from '@/components/Organization'

export default {
  components: {
    OrganizationCardSmall,
    OrganizationCard,
    Organization
  }
}
</script>
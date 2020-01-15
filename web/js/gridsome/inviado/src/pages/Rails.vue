<template>
  <Layout class="bg-primary">
    <main class="container mx-auto">
      <div class="min-w-full">
        <div class="sm:mt-0 sm:w-80 sm:flex-shrink-0 lg:flex lg:flex-wrap">
          <div v-for="org in $page.orgs.activeOrganizations" :key="org.id" class="lg:w-1/3">
            <OrganizationCard :index=org.id />
          </div>
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

<page-query>
  query {
    orgs: rails {
              activeOrganizations {
                id
                name
                description
              }
            }
          }
</page-query>
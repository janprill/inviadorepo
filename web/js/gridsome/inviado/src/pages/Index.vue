<template>
  <Layout class="bg-primary">
    <main class="container mx-auto">
      <div class="min-w-full">
        <div class="sm:mt-0 sm:w-80 sm:flex-shrink-0 lg:flex lg:flex-wrap">
          <div v-for="index in 10" :key="index" class="lg:w-1/3">
            <PurpleCard :index=index />
          </div>
        </div>
      </div>
    </main>
  </Layout>
</template>

<script>
import OrganizationCard from '@/components/OrganizationCard'
import PurpleCard from '@/components/PurpleCard'
import Organization from '@/components/Organization'

export default {
  components: {
    PurpleCard
  }
}
</script>
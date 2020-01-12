<template>
  <div class=" w-64">
    <div class="relative pb-8 h-auto">
      <img class="inset-0 rounded-lg shadow-md object-cover" src="/images/hoyer_375.png" alt="" />
    </div>
    <div class="relative px-4 -mt-16">
      <div class="bg-white rounded-lg px-4 py-4 shadow-2xl">
        <div class="flex items-baseline">
          <span class="inline-block px-2 py-1 leading-none bg-teal-200 text-teal-800 rounded-full font-semibold uppercase tracking-wide text-xs">Plus</span>
          <div class="ml-2 text-xs text-gray-600 font-semibold uppercase tracking-wide">
            5 beds &bull; 3 baths
          </div>
        </div>
        <h4 class="mt-1 text-gray-900 font-semibold text-lg">
          Hey! I'm Jan Prill. I'm building a list of potential employers for software devs in Hamburg. I'm doing so by taking the great
          tailwind.css tutorial "workation as a blueprint"
        </h4>
        <div class="mt-1">
          <span class="text-gray-900">5,000</span>
          <span class="ml-1 text-sm text-gray-600">/wk</span>
        </div>
        <div class="mt-2 flex items-center text-sm text-gray-600">
          <span class="ml-2">2 reviews</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ['property'],
  computed: {
    formattedPrice() {
      const formatter = new Intl.NumberFormat('en-US', {
        style: 'currency',
        currency: 'USD',
      })

      return formatter.format(this.property.price / 100)
    }
  }
}
</script>
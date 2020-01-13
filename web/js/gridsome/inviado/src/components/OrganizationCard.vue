<template>
  <div class="lg:w-1/3 p-2">
    <!-- copy -->
    <div class="relative pb-8 ">
      <div class="bg-white rounded-lg px-4 py-4 shadow-primary shadow-xl">
        <div class="flex items-baseline">
          <span class="inline-block px-2 py-1 leading-none bg-teal-200 text-teal-800 rounded-full font-semibold uppercase tracking-wide text-xs">Plus</span>
          <div class="ml-2 text-xs text-gray-600 font-semibold uppercase tracking-wide">
            5 beds &bull; 3 baths
          </div>
        </div>
        <h2 class="mt-1 text-gray-900 font-semibold text-xl">
          Hoyer Unternehmensgruppe
        </h2>
        <p class="mt-1 text-gray-900 text-lg">
          Hey! I'm Jan Prill. I'm building a list of potential employers for software devs in Hamburg. I'm doing so by taking the great
          tailwind.css tutorial "workation as a blueprint"
        </p>
        <p class="mt-2 text-gray-900 text-lg">
          <em>
            What you might not yet know about xy, even though it could be important for your career decisions. 
            Lorem ipsum dolor sit, amet consectetur adipisicing elit. <br />
            Read more...
          </em>
        </p>
        <p class="mt-2 text-gray-900 text-lg">
          <font-awesome :icon="['fab', 'github']" class=" text-gray-400"/>
          <font-awesome :icon="['fab', 'twitter']"/>
        </p>
        <div class="mt-1">
          <span class="text-gray-900">5,000</span>
          <span class="ml-1 text-sm text-gray-600">/wk</span>
        </div>
        <div class="mt-2 flex items-center text-sm text-gray-500">
          <span class="ml-2">2 reviews</span>
        </div>
      </div>
    </div>
    <!-- image -->
    <div class="relative px-2 h-auto -mt-16">
      <img class="inset-0 rounded-lg shadow-primary shadow-2xl object-cover border border-gray-600" src="/images/hoyer_375.png" alt="" />
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
<template>
  <div class="w-1/3">
    <div class="p-2 mt-10">
      <!-- copy -->
      <div class="relative pb-8 ">
        <div class="bg-white rounded-lg px-4 py-4 shadow-primary shadow-xl">
          <div class="flex items-baseline">
            <span class="inline-block px-2 py-1 leading-none bg-teal-200 text-teal-800 rounded-full font-semibold uppercase tracking-wide text-xs m-1">Java</span>
            <span class="inline-block px-2 py-1 leading-none bg-teal-200 text-teal-800 rounded-full font-semibold uppercase tracking-wide text-xs m-1">Typescript</span>
            <span class="inline-block px-2 py-1 leading-none bg-teal-200 text-teal-800 rounded-full font-semibold uppercase tracking-wide text-xs m-1">Agile</span>
          </div>
          <h2 class="mt-1 text-gray-900 font-semibold text-xl">
            Hoyer Unternehmensgruppe
          </h2>
          <p class="mt-1 text-gray-900 text-lg">
            Hey! I'm Jan Prill. I'm building a list of potential employers for software devs in Hamburg. I'm doing so by taking the great
            tailwind.css tutorial "workation as a blueprint"
          </p>
          <div class="flex mt-3 rounded rounded-xl border border-gray-600 shadow-xl">
            <div class="flex-shrink bg-gray-100 p-2 rounded rounded-xl">
              <font-awesome :icon="['fab', 'xing-square']" class="text-teal-600" />
            </div>
            <div class="flex-grow bg-gray-400 p-2 rounded rounded-xl">
              What you might not yet know about xy, even though it could be important for your career decisions. 
              Lorem ipsum dolor sit, amet consectetur adipisicing elit. <br />
              Read more...
            </div>
          </div>
          <div class="mt-2 text-gray-900 text-lg flex flex-wrap">
            <font-awesome :icon="['fab', 'github']" class="text-teal-600 h-8 w-8 shadow-lg m-1 rounded"/>
            <font-awesome :icon="['fab', 'xing-square']" class="text-teal-600 h-8 w-8 shadow-lg m-1 rounded"/>
          </div>
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
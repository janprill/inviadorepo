<template>
  <div class="p-2 pl-8 pt-6 h-auto">
    <div class="text-white mt-6">
      <em class="font-bold"># {{index}}</em>
    </div>
    <div class="p-3 pb-5 bg-gray-900 shadow shadow-primary pt-8 mt-4">
      <section class="flex -ml-6">
        <div class="flex-shrink bg-gray-200 border bg-gray-800">
          <img src="/images/hoyer_150.png" style="width:120px" />
        </div>
        <div class="flex-grow bg-gray-200 border bg-gray-800">
          <h2 class="text-gray-100 text-2xl pl-2">
            Inviado Ltd &amp; Co KG
          </h2>
        </div>
      </section>
      <section class="mt-4 p-2 text-gray-100">
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, perspiciatis! Qui rem iusto aliquid ut, expedita culpa nemo amet beatae libero at ipsam ex quasi quis! Atque neque libero inventore.
      </section>
      <section class="flex m-3 shadow-inner bg-gray-800 p-2 rounded-sm text-gray-100 p2">
        <div class="flex-shrink pr-2">
          <em class="text-3xl font-extrabold text-red-700">!</em>
        </div>
        <div class="flex-grow p-2">
          What you might not yet know...
        </div>
      </section>
      <SocialIcons />
      <section>
        <More />
      </section>
    </div>
  </div>
</template>

<script>
import More from '@/components/More'
import SocialIcons from '@/components/SocialIcons'
export default {
  props: ['index', 'property'],
  components: {
    More,
    SocialIcons
  }
}
</script>

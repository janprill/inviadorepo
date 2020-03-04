<template>
  <div class="min-h-full bg-primary font-copy text-gray-100 antialiased">
    <header class="mt-3">
      <div class="text-white container mx-auto text-2xl">
        inviado
      </div>
    </header>
    <slot/>
  </div>
  
</template>

<script>
import config from '~/.temp/config.js';

export default {
  computed: {
    config () {
      return config
    }
  }
}
</script>

<style src="~/assets/css/typekit.css"></style>
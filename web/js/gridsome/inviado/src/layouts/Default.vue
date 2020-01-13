<template>
  <div class="min-h-full bg-primary font-copy antialiased">
    <header class="m-2">
      <div class="text-white container mx-auto text-2xl p-2">
        Inviado
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
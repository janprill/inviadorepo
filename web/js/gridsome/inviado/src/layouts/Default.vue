<template>
  <div class="min-h-full bg-black font-copy antialiased">
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

<style src="~/assets/css/main.css"></style>

<style>
  body {
    background-color: #22292f;
  }
</style>

<style src="~/assets/css/typekit.css"></style>

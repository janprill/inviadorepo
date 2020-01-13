<template>
  <div class="min-h-full bg-primary font-copy antialiased">
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
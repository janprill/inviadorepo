<template>
  <div class="m-0">
    <header class="m-0 bg-black p-3">
      <div class="font-neuzeit text-white text-xl">
       inviado
      </div>
    </header>

    <main>
      <slot />
    </main>

  </div>
</template>


<script>
export default {
  props: [],
  data() {
    return {
      isOpen: false,
    }
  },
  methods: {
    toggle() {
      this.isOpen = !this.isOpen
    },
  },
}
</script>

<style src="../css/main.css" />
<link rel="stylesheet" href="https://use.typekit.net/qqr0xyz.css">

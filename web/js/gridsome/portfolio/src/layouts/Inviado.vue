<template>
  <div class="m-0">



    <header class="flex items-center justify-between px-4 py-3 bg-black">
      <div class="text-white font-neuzeit font-bold">
        inviado
      </div>
      <div>
        <button type="button" class="block text-gray-500 hover:text-white focus:text-white focus:outline-none">
          <svg class="h-6 w-6 fill-current" viewBox="0 0 24 24">
            <path fill-rule="evenodd" d="M4 5h16a1 1 0 0 1 0 2H4a1 1 0 1 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2z"/>
          </svg>
        </button>
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


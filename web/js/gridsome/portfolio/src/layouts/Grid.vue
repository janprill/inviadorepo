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

    <div class="m-6 mx-auto">
      <div class="flex flex-row">
        <div class="flex flex-grow h-screen bg-gray-500 w-full mx-10">
          <div class="flex flex-col justify-center items-center mx-auto" v-prlx>
            <h1 class="text-white mx-auto text-center text-4xl font-neuzeit font-extrabold">(reich && frei)</h1>
          </div>
        </div>
      </div>
      <div class="flex flex-row">
        <div class="flex-grow h-64 bg-gray-200 w-1/3">
          Left
        </div>
        <div class="flex-grow bg-gray-400 w-2/3">
          Right
        </div>
      </div>
    </div>

    <div class="m-6 mx-auto">
      <div class="flex flex-row">
        <div class="w-full bg-gray-500 h-64">
        
        </div>
      </div>
      <div class="flex flex-row">
        <div class="w-1/2 h-64 bg-gray-100">

        </div>
        <div class="w-1/2 h-64 bg-gray-300">

        </div>
      </div>
    </div>

    <div class="m-6 mx-auto">
      <div class="flex flex-row">
        <div class="w-full bg-gray-500 h-64">
        
        </div>
      </div>
      <div class="flex flex-row">
        <div class="w-2/3 h-64 bg-gray-100">

        </div>
        <div class="w-1/3 h-64 bg-gray-300">

        </div>
      </div>
    </div>

    <div class="m-6 mx-auto">
      <div class="flex flex-row">
        <div class="w-full bg-gray-500 h-64">
           Bullet points 
        </div>
      </div>
    </div>

    <div class="m-6 mx-auto">
      <div class="flex flex-row">
        <div class="w-full bg-gray-500 h-64">
          Long copy
        </div>
      </div>
      <div class="flex flex-row">
        <div class="w-2/3 h-64 bg-gray-100">

        </div>
        <div class="w-1/3 h-64 bg-gray-200">

        </div>
      </div>
      <div class="flex flex-row">
        <div class="w-1/3 h-64 bg-gray-300">

        </div>
        <div class="w-2/3 h-64 bg-gray-400">

        </div>
      </div>
      <div class="flex flex-row">
        <div class="w-2/3 h-64 bg-gray-500">

        </div>
        <div class="w-1/3 h-64 bg-gray-600">

        </div>
      </div>
    </div>

    <main>
    </main>

    <slot />

    <footer>
      footer 
    </footer>
    
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


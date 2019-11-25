<template>
  <div class="bg-black">

    <header class="flex items-center justify-between px-4 py-3 bg-black">
      <div class="text-white font-neuzeit font-bold">
        <g-link to="/"><g-image src="/images/inviado.png" alt="inviado" style="height:40px;" /></g-link>
      </div>
      
      <!--
      <div>
        <button type="button" class="block text-gray-500 hover:text-white focus:text-white focus:outline-none">
          <svg class="h-6 w-6 fill-current" viewBox="0 0 24 24">
            <path fill-rule="evenodd" d="M4 5h16a1 1 0 0 1 0 2H4a1 1 0 1 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2z"/>
          </svg>
        </button>
      </div>
      -->
    </header>

    <slot/>

    <footer class="font-sans bg-black text-white py-8 px-4 mt-8">
      <div class="mx-auto overflow-hidden flex justify-between items-center">
        <ul class="text-sm text-gray-700 list-none p-0 flex items-center">
          <li>
            <g-link to="/" class="block mr-4 w-32"><g-image src="/images/inviado.png" alt="inviado" style="height:40px;" /></g-link>
          </li>
          <li>
            <g-link to="/impressum" class="inline-block py-2 px-3 text-gray-500 hover:text-gray-500-light no-underline">Impressum</g-link>
           </li>
          <li>
            <g-link to="/datenschutz" class="inline-block py-2 px-3 text-gray-500 hover:text-gray-500-light no-underline">Datenschutzerklärung</g-link>
           </li>
          <li>
            <g-link to="/" class="inline-block py-2 px-3 text-gray-500 hover:text-gray-500-light no-underline">Dein kostenloser Gehaltserhöhungsreport</g-link>
           </li>
        </ul>
        <p class="inline-block py-2 px-3 text-gray-700 text-xs"> ©2019 Inviado. All rights reserved.</p>
      </div>
    </footer>
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

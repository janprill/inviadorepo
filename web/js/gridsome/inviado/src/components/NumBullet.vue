<template>
  <li class="flex">
    <div class="mt-0 font-light text-3xl italic">
      {{index}}
    </div>
    <div class="ml-4 mt-2">
      <slot/>
    </div>
  </li>
</template>

<script>
export default {
  props: ['index'] 
}
</script>
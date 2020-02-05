<template>
  <li class="flex">
    <div class="">
      {{index}}
    </div>
    <div class="ml-3">
      <slot/>
    </div>
  </li>
</template>

<script>
export default {
  props: ['index'] 
}
</script>
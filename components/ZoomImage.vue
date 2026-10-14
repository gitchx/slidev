<script setup>
import { ref } from 'vue'

defineProps({
  src: {
    type: String,
    required: true,
  },
  width: {
    type: String,
    default: '300px',
  },
})

const enlarged = ref(false)
</script>

<template>
  <img
    :src="src"
    :style="{ width }"
    class="cursor-zoom-in"
    @click.stop="enlarged = true"
  />

  <div
    v-if="enlarged"
    class="fixed inset-0 z-50 flex items-center justify-center bg-black/80"
    @click.stop="enlarged = false"
  >
    <img
      :src="src"
      class="max-w-[90%] max-h-[90%] object-contain cursor-zoom-out"
    />
  </div>
</template>

<script setup>
import { ref, computed } from 'vue'

const props = defineProps({
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

const imageSrc = computed(() => {
  const base = import.meta.env.BASE_URL
  const path = props.src.replace(/^(\.\/)?(public\/)?\/?/, '')
  return `${base}${path}`
})
</script>

<template>
  <img
    :src="imageSrc"
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
      :src="imageSrc"
      class="max-w-[90%] max-h-[90%] object-contain cursor-zoom-out"
    />
  </div>
</template>

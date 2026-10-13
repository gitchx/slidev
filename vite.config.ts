import { defineConfig } from 'vite'
import markdownItAttrs from 'markdown-it-attrs'

export default defineConfig({
  slidev: {
    markdown: {
      markdownSetup(md) {
        md.use(markdownItAttrs)
      },
    },
  },
})

import DefaultLayout from '~/layouts/Default.vue'
import SimpleLayout from '~/layouts/Simple.vue'

export default function (Vue, { head }) {
  Vue.component('Layout', DefaultLayout)
  Vue.component('SimpleLayout', SimpleLayout)

  head.htmlAttrs = { lang: 'en', class: 'h-full' }
  head.bodyAttrs = { class: 'antialiased font-serif' }

  head.link.push({
    rel: 'stylesheet',
    href: 'https://fonts.googleapis.com/css?family=Fira+Sans:400,700%7CCardo'
  })
}

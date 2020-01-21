import DefaultLayout from '~/layouts/Default.vue'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { config, library } from '@fortawesome/fontawesome-svg-core'
import { faMask, faFemale, faChartBar, faEye, faComments } from '@fortawesome/free-solid-svg-icons'
import { faGithub, faTwitter, faXingSquare } from '@fortawesome/free-brands-svg-icons'
import '@fortawesome/fontawesome-svg-core/styles.css'

config.autoAddCss = false;
library.add(faGithub, faTwitter, faXingSquare, faMask, faFemale, faComments, faChartBar, faEye)

export default function (Vue, { head }) {
  Vue.component('Layout', DefaultLayout)
  Vue.component('font-awesome', FontAwesomeIcon)

  head.htmlAttrs = { lang: 'en', class: 'h-full' }
  head.bodyAttrs = { class: 'antialiased font-copy bg-primary' }
}

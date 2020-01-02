import DefaultLayout from '~/layouts/Default.vue'
import { ValidationObserver, ValidationProvider, extend, localize } from 'vee-validate';
import { required, email } from 'vee-validate/dist/rules';
import de from 'vee-validate/dist/locale/de.json';

export default function (Vue, { head }) {
  Vue.component('Layout', DefaultLayout)
  Vue.component('ValidationObserver', ValidationObserver);
  Vue.component('ValidationProvider', ValidationProvider);

  head.htmlAttrs = { lang: 'en', class: 'h-full' }
  head.bodyAttrs = { class: 'antialiased font-serif' }

  head.link.push({
    rel: 'stylesheet',
    href: 'https://use.typekit.net/qqr0xyz.css'
  })

  extend('email', email)
  extend('required', required)

  localize('de', de)




}

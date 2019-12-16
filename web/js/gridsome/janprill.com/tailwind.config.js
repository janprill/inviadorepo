module.exports = {
  important: true,
  theme: {
    backgroundColor: theme => ({
      ...theme('colors'),
      'primary': '#272727',
      'turkis': '#3edfcd'
    }),
    fontFamily: {
      myriad: [
        'myriad-pro',
        'sans-serif'
      ],
      neuzeit: [
        '-apple-system', 
        'BlinkMacSystemFont', 
        'neuzeit-grotesk',
        '"Segoe UI"'
      ],
      copy: [
        'futura-pt',
        '-apple-system',
        '"Helvetica Neue"',
        'sans-serif'
      ],
      neu: [
        'neuzeit-grotesk'
      ],
      meta: [
        'ff-meta-serif-web-pro'
      ],
    },
    extend: {
      colors: {
        cyan: '#9cdbff',
      },
      boxShadow: {
        'primary': '5px 19px 38px rgba(0,0,0,.3), 0 1px 12px rgba(0,0,0,.22)',
      },
      margin: {
        '96': '24rem',
        '128': '32rem',
      },
    }
  },
  variants: {
    opacity: ['responsive', 'hover']
  }
}
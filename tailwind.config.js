module.exports = {
  purge: {
    enabled: false,
    content: [
      './src/**/*.elm'
      , './src/**/*.js'
      , './src/**/*.jsx'
      , './src/**/*.ts'
      , './src/**/*.tsx'
      , './src/**/*.html'
    ]
  },

  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/forms')
  ],
}

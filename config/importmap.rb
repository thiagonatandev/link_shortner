# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "chartkick" # @5.0.1
pin "chartkick_init", to: "chartkick_init.js"
pin "chartkick" # @5.0.1
pin "luxon", to: "https://cdn.jsdelivr.net/npm/luxon@3.6.0/build/global/luxon.min.js"

pin "chartjs-adapter-luxon" # @1.3.1
pin "chart.js", to: "https://cdn.jsdelivr.net/npm/chart.js@4.4.0/dist/chart.umd.min.js"
pin "@kurkle/color", to: "@kurkle--color.js" # @0.3.4

import Chartkick from "chartkick"
import {
  Chart as ChartJS,
  registerables,
} from "chart.js"
import "chartjs-adapter-luxon"

ChartJS.register(...registerables)

Chartkick.use(ChartJS)

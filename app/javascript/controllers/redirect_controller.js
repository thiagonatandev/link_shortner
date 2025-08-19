import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
	static targets = ["counter"]
	static values = {
		url: String,
		seconds: { type: Number, default: 5 }
	}

	connect() {
		this.remaining = this.secondsValue
		this.updateCounter()
		this.timer = setInterval(() => this.tick(), 1000)
	}

	disconnect() {
		if (this.timer) clearInterval(this.timer)
	}

	tick() {
		this.remaining -= 1
		if (this.remaining <= 0) {
			clearInterval(this.timer)
			window.location.href = this.urlValue
			return
		}
		this.updateCounter()
	}

	updateCounter() {
		if (this.hasCounterTarget) {
			this.counterTarget.textContent = this.remaining
		}
	}
} 
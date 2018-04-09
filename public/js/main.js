const QuestionsApp = ( () => {
	return {
		view: () => {
			return m('p', 'Welcome!')
		}
	}
} )()

document.addEventListener('DOMContentLoaded', () => {
	m.mount(document.getElementById('questions'), QuestionsApp)
})

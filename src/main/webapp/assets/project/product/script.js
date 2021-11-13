document.querySelector('.add-to-cart').onclick = (e) => {
	if (document.querySelector('#logout') === null) window.location.replace('#')
	else {
		//Ajax

		//Show message
		showSuccessToast();
	}
	e.preventDefault();
}
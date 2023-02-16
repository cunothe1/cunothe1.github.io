window.onload = function slideshow() {
	const images = document.querySelectorAll('.slideshow img');
	let i = 0;
	setInterval(() => {
		images[i].style.opacity = 0;
		i = (i + 1) % images.length;
		images[i].style.opacity = 1;
	}, 4000);
}
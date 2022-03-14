<script context="module">
	import getComponent from '../utils/getComponent';

	const getRandomNumber = (min, max) => Math.floor(Math.random() * (max + 1 - min)) + min;

	export const load = async () => {
		const header = await getComponent('header', getRandomNumber(1, 3));
		const footer = await getComponent('footer', getRandomNumber(1, 3));
		return {
			props: {
				header,
				footer
			}
		};
	};
</script>

<script>
	import '../tailwind.css';

	export let header;
	export let footer;
</script>

<svelte:component this={header} />
<slot />
<svelte:component this={footer} />

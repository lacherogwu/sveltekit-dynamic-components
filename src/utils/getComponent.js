export default async (type, name) => {
	const { default: d } = await import(`../lib/components/${type}/${name}.svelte`);
	return d;
};

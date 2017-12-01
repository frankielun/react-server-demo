import React from 'react';
import HelloWorld from './hello-world';
import renderer from 'react-test-renderer';

it('renders correctly2', () => {
	const tree = renderer
		.create(<HelloWorld />)
		.toJSON();

	expect(tree).toMatchSnapshot();
});

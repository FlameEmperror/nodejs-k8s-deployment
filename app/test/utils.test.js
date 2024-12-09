const { greet } = require('../src/utils');

test('greet function returns the correct greeting', () => {
    const name = 'Mihir';
    const expected = 'Hello, Mihir!';
    const result = greet(name);
    expect(result).toBe(expected);
});

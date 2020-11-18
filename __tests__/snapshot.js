import { render } from 'react-dom'
import Homepage from '../pages/index'

it('creates a snapshot for <Homepage/>', () => {
    const tree = render.create(<Homepage />).toJSON()
    expect(tree).toMatchSnapshot()
})
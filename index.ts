import './tailwind.css'
import { Elm } from './src/Main.elm' 

document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById('app')
    if (!root) { 
        console.log('root element not found') 
        return 
    } 
    const app = Elm.Main.init({
          node: root 
    })
    
})

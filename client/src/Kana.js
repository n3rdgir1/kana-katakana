import React, { Component } from 'react';
import Option from './Option';

class Kana extends Component {
  constructor () {
    super()
    this.state = {
      romanji: ''
    }
  }

  fetch (endpoint) {
    return window.fetch(endpoint)
      .then(response => response.json())
      .catch(error => console.log(error))
  }

  componentWillMount () {
    console.log('will mount')
    this.fetch('/kanas')
      .then(kanas => {
        if (kanas.length) {
          let answerIndex = this.random(kanas.length)
          let answer = kanas[answerIndex]
          this.setState({
            characters: kanas,
            answerIndex,
            answer,
            options: this.randomOptions(kanas, answer, kanas.length)
          })
        }
      })
  }

  random(length) {
    return Math.floor(Math.random() * length)
  }

  shuffle(array) {
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
  }

  randomOptions(characters, answer, length) {
    return this.shuffle([
      {kana: characters[this.random(length)], answer: false},
      {kana: characters[this.random(length)], answer: false},
      {kana: characters[this.random(length)], answer: false},
      {kana: answer, answer: true}
    ]);
  }

  render() {
    let { characters, answer, options } = this.state
    let { type } = this.props

    return (
      characters
      ? <div>
        <div className='question'>
          What is the <span className='type'>{type}</span> of <span className='romanji'>{answer.letter}</span>?
        </div>
        <div className='answers'>
          <div className='row'>
            <Option character={options[0].kana} answer={options[0].answer} type={type} />
            <Option character={options[1].kana} answer={options[1].answer} type={type} />
          </div>
          <div className='row'>
            <Option character={options[2].kana} answer={options[2].answer} type={type} />
            <Option character={options[3].kana} answer={options[3].answer} type={type} />
          </div>
        </div>
      </div>
      : <div>
        <div className='question'>Loading</div>
      </div>
    )
  }
}

export default Kana;

import React, {Component} from 'react'
import axios from "axios"
import Question from './Question.js'
import Card from 'react-bootstrap/Card'


export default class Quiz extends Component {
  constructor() {
    super();
    this.state = {
      questions:[],
      activeQuestion:0,
      resultLog:[]
    }
  }

  componentDidMount() {
    axios("/api/v1/quiz")
    .then(response => {
      console.log(response.data)
       this.setState({questions:response.data})
    })
    .catch(error => console.log(error))
  
  }

  nextQuestion = (choice) => {
    if (this.state.activeQuestion < this.state.questions.length - 1) {
      console.log(choice)
      let styleId = choice.style_id
      let resultLog = this.state.resultLog
      resultLog.push(styleId)
      this.setState({
        activeQuestion: this.state.activeQuestion + 1,
        resultLog
      })
    } else {
      console.log('calculating style preference..')
     const mostFrequentStyle = this.mostFrequent(this.state.resultLog)
     this.sendStyleId(mostFrequentStyle)
      console.log('This is the most frequest style Id..')
      console.log(this.mostFrequent(this.state.resultLog))
    }
  }
  mostFrequent = (resultLog) => {
    let count = {}
    resultLog.forEach(function (result) {
      if (count[result]) {
        count[result] += 1
      } else {
        count[result] = 1
      }
    })
    let mostResult
    let highest = 0
    for (let result in count) {
      if (count[result] > highest) {
        mostResult = result
        highest = count[result]
      }
    }
    return mostResult
  }

  sendStyleId = (id) => {

    axios.post('/results', {
      styleId :  id
    })
    .then((response)=>{
      console.log("Style Id has been sent to server")
    })
  
}

  render(){
        return (
          <div >
   <Card style={{ width:'25rem', margin:'5em auto' }}>
          {this.state.questions.map((item, idx) => {
            const display = this.state.activeQuestion === idx;
            return <Question
            question={item} 
            key={idx} 
            display={display} 
            nextQuestion={this.nextQuestion} 
             />
          })}
        </Card>
          </div>
       
    )
    
  }
}



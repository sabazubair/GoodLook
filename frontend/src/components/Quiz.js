import React, {Component} from 'react'
import axios from "axios"

class Question extends Component{
  constructor() {
    super();
  }

  render(){
   let {question, choices} = this.props

    return  (<div>
      <p>{question}</p>

    </div>
     )

  }

}



export default class Quiz extends Component {
  constructor() {
    super();
    this.state = {
      questions:[]
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

  render(){
    let question = this.state.questions.map((question)=>{
      const {choices,text} = question
      
        return (<Question  question={text} /> )
     
    })
    
    return <div>{question}</div>
  }
}

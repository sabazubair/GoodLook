import React, {Component} from 'react'
import axios from "axios"

// class Question extends Component{
//   constructor() {
//     super();
//   }

//   render(){
//    let {question, choices} = this.props

//     return  (<div>
//       <p>{question}</p>

//     </div>
//      )

//   }

// }

export default class Quiz extends Component {
  constructor(props) {
    super(props);
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
        let choices = question.choices.map((choice)=>{


          if (choice.image && choice.text) {
            return (
            <div>
              <p>{choice.text}</p>
              <img width={100} height={100} src= {choice.image}/>
            </div>
            )
          } else if (choice.image) {
            return (
            <div>
            <img width={100} height={100} src= {choice.image}/>
            </div>
            )
          } else {
            return (
            <div>
            <p>{choice.text}</p>
            </div>
            )
          }
        })

        return (
        <div>
          <p>{question.text}</p>
          <p>{choices}</p>
        </div>)
    })

    return <div>{question}</div>
  }
}
